import React from "react";
import { motion } from "framer-motion"; // Import motion from framer-motion

const Management = ({ ManagementData }) => {
  return (
    <>
      <motion.div
        className="my-20 md:my-60 bg-[#8B0304] text-white py-10 px-5 rounded-lg shadow-lg"
        initial={{ opacity: 0 }} // Initial state: hidden
        whileInView={{ opacity: 1 }} // When in view, fade in
        viewport={{ once: true, amount: 0.5 }} // Trigger when 50% of the section is visible
        transition={{ duration: 0.6 }} // Animation duration
      >
        <h1 className="text-5xl md:text-7xl font-extrabold text-center mb-10 md:mb-20">
          Our Core Team
        </h1>
        <div className="md:-ml-44 md:mr-5">
          <div className="flex justify-start items-start">
            <div className=" ">
              <img
                src={`reactAssets/whiteLogo2.png`}
                alt="logo"
                className="ml-20 w-60 md:w-96 transform -rotate-90 mt-20 hidden md:block"
              />
            </div>
            <div className="w-full grid grid-cols-1 md:grid-cols-2 md:gap-x-4">
              {ManagementData.map((team, index) => (
                <motion.div
                  key={index}
                  className="p-4 grid-cols-2 items-start justify-start bg-white text-black rounded-lg shadow-md mb-6"
                  initial={{ opacity: 0, y: 30 }} // Initial state: hidden and below
                  whileInView={{ opacity: 1, y: 0 }} // When in view, animate to visible and original position
                  viewport={{ once: true, amount: 0.5 }} // Trigger animation when 50% of the card is visible
                  transition={{
                    duration: 0.6,
                    delay: index * 0.2, // Delay for staggered effect
                  }}
                >
                  <div className="text-4xl font-bold mb-3 text-[#8B0304]">
                    {team.number}
                  </div>
                  <div className="text-sm text-gray-900">{team.name}</div>
                  <div className="text-xl text-gray-700">Team</div>
                  <hr className="my-4 w-full border-gray-300" />
                </motion.div>
              ))}
            </div>
          </div>
        </div>
      </motion.div>
    </>
  );
};

export default Management;
