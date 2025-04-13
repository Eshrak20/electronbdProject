import { motion } from "framer-motion"; // Import motion from framer-motion
import HeadLine2 from "@/Components/MyComponents/HeadLine2";

const specialIndices = new Set([1, 4, 7, 10, 13]);

const HomeServices = ({ ourServices }) => {
    return (
        <div className="w-full px-10 py-12 md:py-10 bg-[#8b0303] 2xl:py-20 lg:px-24 xl:px-28 2xl:px-20 2xl:my-20 gap-10 lg:gap-16 xl:gap-20 2xl:gap-32">
            <div className="container mx-auto">
                <HeadLine2 title="Our Services" text="text-white" />
                <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-8">
                    {ourServices.map((service, index) => {
                        const isSpecial = specialIndices.has(index);

                        return (
                            <motion.div
                                key={service.id}
                                className={`relative transition-all duration-300 group rounded-xl p-5 2xl:px-10 md:h-96 2xl:h-82 flex flex-col items-center justify-center shadow-lg overflow-hidden 
                                ${
                                    isSpecial
                                        ? "bg-white text-gray-800 hover:bg-[#1D232A] hover:text-white"
                                        : "bg-[#1D232A] text-white hover:bg-[#8b0303] hover:text-white"
                                }`}
                                // Animating when the element is in view with staggered delays
                                initial={{ opacity: 0, y: 20 }}
                                whileInView={{
                                    opacity: 1,
                                    y: 0,
                                    transition: {
                                        duration: 0.5,
                                        delay: index * 0.2, // Adds a delay based on the index
                                        ease: "easeInOut",
                                    },
                                }}
                                viewport={{ once: true }} // Only trigger the animation once when the element comes into view
                            >
                                <div className="absolute inset-0 bg-gradient-to-r from-transparent to-red-500 opacity-0 group-hover:opacity-20 transition-all duration-300"></div>
                                <div className="absolute -inset-1 rounded-xl bg-gradient-to-b from-gray-300 to-transparent opacity-0 group-hover:opacity-30 transition-all duration-300 blur-md"></div>
                                <img
                                    src={service.icon}
                                    alt={service.title}
                                    className="w-20 h-auto object-cover transition-transform duration-500 group-hover:scale-110"
                                />
                                <h2
                                    className={`md:text-base 2xl:text-xl font-semibold mt-4 transition-colors
                                    ${
                                        isSpecial
                                            ? "text-gray-800 group-hover:text-white"
                                            : "text-white"
                                    }`}
                                >
                                    {service.title}
                                </h2>
                                <p
                                    className={`md:text-sm 2xl:text-base mt-2 text-center transition-colors
                                    ${
                                        isSpecial
                                            ? "text-gray-600 group-hover:text-white"
                                            : "text-white"
                                    }`}
                                >
                                    {service.description}
                                </p>
                            </motion.div>
                        );
                    })}
                </div>
            </div>
        </div>
    );
};

export default HomeServices;
