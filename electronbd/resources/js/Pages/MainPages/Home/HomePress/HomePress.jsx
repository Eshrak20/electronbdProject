import React, { useState } from "react";
import { FileText } from "lucide-react";
import { Link } from "@inertiajs/react";
import { motion } from "framer-motion"; // Import Framer Motion

const HomePress = ({ isPressPage, pressData }) => {
    const [visibleCount, setVisibleCount] = useState(6); // Initially showing 6 cards
    const [isExpanded, setIsExpanded] = useState(false); // Track whether data is expanded

    const handleButtonClick = () => {
        if (isPressPage) {
            if (isExpanded) {
                setVisibleCount(6); // Show less if already expanded
                setIsExpanded(false);
            } else {
                setVisibleCount(pressData.length); // Show all data if not expanded
                setIsExpanded(true);
            }
        } else {
            // If on the Home Page, navigate to the Press Page
            window.location.href = "/press"; // Adjust to your actual press page URL
        }
    };

    return (
        <>
            <motion.div
                className="mt-10 md:mt-0 mx-auto max-w-screen-2xl px-4 sm:px-6 md:px-8 lg:px-24 xl:px-28 2xl:px-20 md:py-10 2xl:py-20 2xl:my-20 gap-6 lg:gap-16 xl:gap-20 2xl:gap-32"
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                transition={{ duration: 1 }}
            >
                <div className="flex flex-col items-center justify-center">
                    <div className="grid sm:grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6 md:gap-10 p-6 md:p-10">
                        {pressData.slice(0, visibleCount).map((item) => (
                            <motion.div
                                key={item.id}
                                className="rounded-lg shadow-md bg-white flex flex-col group overflow-hidden"
                                initial={{ opacity: 0, y: 30 }}
                                animate={{ opacity: 1, y: 0 }}
                                transition={{
                                    duration: 0.5,
                                    delay: 0.1 * item.id, // Stagger animation for each card
                                }}
                            >
                                <Link
                                    href={`/press/${item.id}`}
                                    className="flex flex-col group overflow-hidden"
                                >
                                    {/* Press Label */}
                                    <div className="flex items-center gap-2 px-4 sm:px-6 py-3 bg-gray-100 rounded-t-lg">
                                        <FileText className="w-4 sm:w-5 h-4 sm:h-5 text-gray-600" />
                                        <p className="text-sm sm:text-base text-gray-700 font-medium">
                                            Press
                                        </p>
                                    </div>

                                    {/* Image with Hover Effect */}
                                    <div className="overflow-hidden">
                                        <img
                                            src={item.image}
                                            alt={item.title}
                                            className="w-full h-48 md:h-56 lg:h-64 xl:h-72 object-cover transition-transform duration-300 ease-in-out group-hover:scale-105"
                                        />
                                    </div>

                                    {/* Content with limited height to prevent overflow */}
                                    <div className="flex-grow px-6 sm:px-10 py-8 sm:py-12 flex flex-col">
                                        <h1 className="text-lg sm:text-xl font-semibold text-gray-900 line-clamp-3 sm:line-clamp-4">
                                            {item.title}
                                        </h1>
                                        <p className="mt-4 sm:mt-6 text-gray-700 text-sm sm:text-base line-clamp-3 sm:line-clamp-4">
                                            {item.description}
                                        </p>
                                    </div>
                                </Link>
                            </motion.div>
                        ))}
                    </div>

                    {/* Dynamic Button */}
                    {pressData.length > 3 && (
                        <motion.button
                            onClick={handleButtonClick}
                            className="mt-5 mb-10 px-8 sm:px-10 py-2 sm:py-3 bg-gradient-to-r from-gray-900 to-gray-700 text-white text-xs sm:text-sm md:text-base font-bold uppercase rounded-full shadow-lg hover:shadow-gray-500/50 transition duration-300 ease-in-out"
                            initial={{ opacity: 0 }}
                            animate={{ opacity: 1 }}
                            transition={{ delay: 0.2, duration: 0.5 }}
                        >
                            {isPressPage
                                ? isExpanded
                                    ? "Show Less"
                                    : "Show More"
                                : "More News"}
                        </motion.button>
                    )}
                </div>
            </motion.div>
        </>
    );
};

export default HomePress;
