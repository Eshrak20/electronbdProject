import HeadLine2 from "@/Components/MyComponents/HeadLine2";
import React from "react";
import { FaEnvelope, FaPhone, FaLinkedin } from "react-icons/fa";
import { motion } from "framer-motion"; // Import motion from framer-motion

const Leader = ({ leaders }) => {

    return (
        <div className="my-16 px-6">
            <HeadLine2
                title="Board of Directors"
                text="text-gray-900"
            />

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-12 py-16 2xl:px-8">
                {leaders.map((leader, index) => (
                    <motion.div
                        key={index}
                        className="bg-[#ECECEC] p-5 md:p-7 2xl:p-10 rounded-2xl shadow-lg text-center flex flex-col items-center w-full max-w-[400px] mx-auto transition-all duration-300 hover:scale-105 hover:shadow-xl hover:bg-[#f5f5f5]"
                        initial={{ opacity: 0, y: 30 }} // Initial state: hidden and below
                        whileInView={{ opacity: 1, y: 0 }} // When in view, animate to visible and original position
                        viewport={{ once: true, amount: 0.5 }} // Trigger animation when 50% of the card is visible
                        transition={{ duration: 0.6, delay: index * 0.2 }} // Add delay for staggered animation
                    >
                        {/* Profile Image */}
                        <img
                            src={leader.image}
                            alt={leader.name}
                            className="w-40 h-40 rounded-full mb-6 border-4 border-[#8B0303] transition-transform duration-300 hover:rotate-6 hover:border-[#6a0202]"
                        />

                        {/* Name & Position */}
                        <h3 className="text-lg md:text-xl 2xl:text-2xl font-bold text-[#8B0303]">
                            {leader.name}
                        </h3>
                        <p className="text-sm md:text-base 2xl:text-lg text-[#8B0303] font-semibold">
                            {leader.designation}
                        </p>
                        <p className="text-sm md:text-base 2xl:text-md text-gray-700 mt-1">
                            {leader.degree}
                        </p>

                        {/* Description */}
                        <p className="text-sm text-gray-600 mt-4 leading-relaxed">
                            {leader.specialization}
                        </p>

                        {/* Social Icons */}
                        <div className="mt-6 flex justify-center gap-6 text-[#8B0303]">
                            <a
                                href={`mailto:${leader.email}`}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="transition transform hover:scale-110"
                            >
                                <FaEnvelope className="text-2xl hover:text-gray-700" />
                            </a>
                            <a
                                href={`tel:${leader.phone}`}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="transition transform hover:scale-110"
                            >
                                <FaPhone className="text-2xl hover:text-gray-700" />
                            </a>
                            <a
                                href={leader.linkedin}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="transition transform hover:scale-110"
                            >
                                <FaLinkedin className="text-2xl hover:text-blue-600" />
                            </a>
                        </div>
                    </motion.div>
                ))}
            </div>
        </div>
    );
};

export default Leader;
