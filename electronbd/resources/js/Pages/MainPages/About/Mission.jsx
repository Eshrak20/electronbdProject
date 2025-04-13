import HeadLine2 from "@/Components/MyComponents/HeadLine2";
import React from "react";

const Mission = () => {
    return (
        <>
            <div>
                <HeadLine2 title="Our Mission & Vision" text="text-gray-900" />
                <div className="flex flex-col md:flex-row justify-center items-center min-h-screen gap-8 px-5 md:px-8  2xl:-mt-60">
                    <div className="w-auto p-5 md:p-10 bg-[#8b0303] text-white text-center text-2xl font-bold rounded-xl shadow-xl transition-all duration-300 transform hover:scale-105 hover:shadow-2xl hover:bg-[#7a0202] hover:rotate-2 hover:translate-x-2 flex flex-col justify-center">
                        <h1 className="uppercase mb-4 tracking-wide">Vision</h1>
                        <p className="list-disc list-inside text-lg text-start font-medium space-y-2">
                            To be the world’s leading EPC company, driving
                            global innovation and setting new standards of
                            excellence in engineering, procurement, and
                            construction. We aim to deliver sustainable,
                            cutting-edge solutions that shape the future of
                            energy, infrastructure, and industrial development,
                            empowering businesses and communities worldwide.
                        </p>
                    </div>
                    <div className="w-auto p-5 md:p-10 bg-[#8b0303] text-white text-center text-2xl font-bold rounded-xl shadow-xl transition-all duration-300 transform hover:scale-105 hover:shadow-2xl hover:bg-[#7a0202] hover:rotate-2 hover:translate-x-2 flex flex-col justify-center ">
                        <h1 className="uppercase mb-4 tracking-wide ">
                            Mission
                        </h1>
                        <div className="flex flex-col items-center">
                            <p className="list-disc list-inside text-lg text-start font-medium space-y-2">
                                Our mission is to provide unparalleled EPC
                                services by leveraging our expertise, advanced
                                technologies, and commitment to quality. We are
                                dedicated to delivering high-performance,
                                cost-effective solutions in the energy,
                                industrial, and infrastructure sectors. Through
                                continuous improvement, collaboration, and
                                sustainability, we aim to exceed client
                                expectations and contribute to a cleaner, more
                                efficient, and resilient world.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default Mission;
