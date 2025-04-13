import { useState } from "react";
import HeadLine2 from "@/Components/MyComponents/HeadLine2";
import { motion } from "framer-motion"; // Import motion from framer-motion

const HomeClients = ({ ourCustomer, about, title }) => {
    const [visibleCount, setVisibleCount] = useState(
        about ? ourCustomer.length : 10
    );
    const [isExpanded, setIsExpanded] = useState(about);

    const handleButtonClick = () => {
        if (isExpanded) {
            setVisibleCount(10); // Show less if already expanded
            setIsExpanded(false);
        } else {
            setVisibleCount(ourCustomer.length); // Show all data if not expanded
            setIsExpanded(true);
        }
    };

    return (
        <div className="w-full px-10 py-12 bg-[#ECECEC] md:py-10 2xl:py-20 lg:px-24 xl:px-28 2xl:px-20 2xl:my-20">
            <div className="container mx-auto flex flex-col items-center justify-center">
                <div className="-mt-24">
                    <HeadLine2 title={title} text="text-black" />
                </div>

                {/* Customer Grid */}
                <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-8">
                    {ourCustomer.slice(0, visibleCount).map((image, index) => (
                        <motion.div
                            key={image.id}
                            className="relative transition-all duration-500 group rounded-xl overflow-hidden"
                            initial={{ opacity: 0, y: 20 }}
                            animate={{
                                opacity: 1,
                                y: 0,
                                transition: {
                                    duration: 0.5,
                                    delay: index * 0.2,
                                    ease: "easeInOut",
                                },
                            }}
                        >
                            <img
                                src={image.image}
                                alt={image.title}
                                className="w-full h-[210px]  object-fill transition-transform duration-500 group-hover:scale-110"
                            />
                        </motion.div>
                    ))}
                </div>

                {/* Load More Button */}
                <button onClick={handleButtonClick} className="nice-button-2">
                    {isExpanded ? "Show Less" : "Show More"}
                </button>
            </div>
        </div>
    );
};

export default HomeClients;
