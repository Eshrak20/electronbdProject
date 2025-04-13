import { motion } from "framer-motion"; // Import motion from framer-motion
import HeadLine2 from "@/Components/MyComponents/HeadLine2";

const HomeSolutions = ({ ourSolution }) => {
    return (
        <div className="w-full px-6 md:px-12 lg:px-24 xl:px-28 2xl:px-32 py-12 md:py-16 2xl:py-24 bg-white">
            <div className="container mx-auto">
                <HeadLine2 title="Solutions" text="text-gray-800" />

                <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8 md:gap-10 lg:gap-12 2xl:gap-16 justify-center">
                    {ourSolution.map((service, index) => (
                        <motion.div
                            key={service.id}
                            className="relative flex flex-col items-center justify-center p-8 md:p-6 md:py-10 rounded-xl shadow-lg border border-gray-300 bg-black text-white overflow-hidden transition-all duration-300 hover:shadow-2xl hover:border-red-500"
                            // Animating when the element is in view with staggered delays
                            initial={{ opacity: 0, y: 20 }}
                            whileInView={{
                                opacity: 1,
                                y: 0,
                                transition: {
                                    duration: 0.5,
                                    delay: index * 0.2, // Delay based on index
                                    ease: "easeInOut",
                                },
                            }}
                            viewport={{ once: true }} // Trigger animation once when in view
                        >
                            {/* Gradient Hover Effect */}
                            <div className="absolute inset-0 bg-gradient-to-r from-transparent to-red-500 opacity-0 group-hover:opacity-20 transition-all duration-300"></div>
                            <div className="absolute -inset-1 rounded-xl bg-gradient-to-b from-gray-700 to-transparent opacity-0 group-hover:opacity-30 transition-all duration-300 blur-md"></div>

                            {/* Icon */}
                            <img
                                src={service.icon}
                                alt={service.title}
                                className="w-20 h-auto object-cover transition-transform duration-500 group-hover:scale-110"
                            />

                            {/* Title */}
                            <h2 className="text-xl font-semibold mt-4 transition-colors text-white group-hover:text-red-500">
                                {service.title}
                            </h2>

                            {/* Description */}
                            <p className="mt-2 2xl:text-center md:text-start text-gray-300 group-hover:text-gray-100 transition-colors">
                                {service.description}
                            </p>

                            {/* Button */}
                            {/* <button className="mt-6 px-6 py-3 bg-gradient-to-r from-red-600 to-red-800 text-white font-bold uppercase rounded-xl shadow-lg hover:shadow-red-500/50 hover:scale-105 transition duration-300 ease-in-out">
                                Learn More
                            </button> */}
                        </motion.div>
                    ))}
                </div>
            </div>
        </div>
    );
};

export default HomeSolutions;
