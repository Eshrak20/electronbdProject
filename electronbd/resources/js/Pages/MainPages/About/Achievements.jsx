import { motion } from "framer-motion"; // Import Framer Motion

const Achievements = ({ achievements }) => {
    return (
        <div className="py-20 px-5 bg-[#F9F9F9]">
            <h1 className="text-5xl md:text-6xl font-extrabold text-center text-gray-800 mb-10">
                Achievements
            </h1>
            <div className="max-w-screen-xl mx-auto">
                {/* Grid Layout */}
                <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-10 ">
                    {achievements.map((item, index) => (
                        <motion.div
                            key={index}
                            className="bg-white shadow-md rounded-lg py-8 px-10 mb-6 transform transition duration-300"
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true, amount: 0.5 }} // Trigger animation when 50% of the element is in view
                            transition={{ duration: 0.6, delay: index * 0.2 }} // Add delay for staggered animation
                            whileHover={{
                                scale: 1.05,
                                boxShadow: "0 12px 16px rgba(0,0,0,0.2)",
                            }} // Hover effect
                        >
                            <div className="flex flex-col items-center">
                                <div className="text-4xl font-bold text-[#8B0304] mb-4">
                                    {item.year}
                                </div>
                                <div className="text-lg font-semibold text-gray-700 mb-4">
                                    {item.title}
                                </div>
                                <div className="text-gray-600 text-sm">
                                    {item.description}
                                </div>
                            </div>
                        </motion.div>
                    ))}
                </div>
            </div>
        </div>
    );
};

export default Achievements;
