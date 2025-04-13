import { useEffect, useState } from "react";
import { FaMapMarkerAlt, FaPhoneAlt, FaEnvelope } from "react-icons/fa";
import { motion } from "framer-motion";

const Visit = () => {
    const [currentDate, setCurrentDate] = useState("");

    useEffect(() => {
        const date = new Date();
        setCurrentDate(
            date.toLocaleString("en-US", { timeZone: "Asia/Dhaka" })
        );
    }, []);

    return (
        <div className="flex flex-col items-center p-5 gap-10 -pt-20">
            {/* Information Section */}
            <motion.div
                className="w-full p-8 rounded-lg flex flex-wrap justify-between items-start text-[#8B0303]"
                initial={{ opacity: 0, y: 50 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.8 }}
            >
                {/* Address Section */}
                <motion.div className="flex flex-col items-center text-center space-y-4 w-full sm:w-1/3 hover:scale-105 transition-transform duration-300 mb-8 sm:mb-0">
                    <div className="bg-red-100 p-4 rounded-full shadow-md">
                        <FaMapMarkerAlt className="text-5xl text-[#8B0303]" />
                    </div>
                    <h2 className="text-xl font-bold">Address</h2>
                    <p className="text-lg text-gray-700">
                        Head Office Address: House # 11 <br />
                        Road # 04, Dhanmondi R/A, Dhaka-1205 <br />
                        Factory Address : Vill: Gobindopur <br />
                        P.O: Fularpara, P.S:Muksudpur <br />
                        District: Gopalganj
                    </p>
                </motion.div>

                {/* Phone Section */}
                <motion.div className="flex flex-col items-center text-center w-full sm:w-1/3 hover:scale-105 transition-transform duration-300 mb-8 sm:mb-0">
                    <div className="bg-red-100 p-4 rounded-full shadow-md">
                        <FaPhoneAlt className="text-5xl text-[#8B0303]" />
                    </div>
                    <h2 className="text-xl font-bold mt-4">Phone Numbers</h2>
                    <p className="text-lg text-gray-700 mt-4">
                        +880-1670-988233
                    </p>
                    <p className="text-lg text-gray-700">
                        +880-1613-333667
                    </p>
                </motion.div>

                {/* Email Section */}
                <motion.div className="flex flex-col items-center text-center space-y-4 w-full sm:w-1/3 hover:scale-105 transition-transform duration-300">
                    <div className="bg-red-100 p-4 rounded-full shadow-md">
                        <FaEnvelope className="text-5xl text-[#8B0303]" />
                    </div>
                    <h2 className="text-xl font-bold">Email</h2>
                    <div className="text-start">
                        <p className="text-lg text-gray-700">
                            ceo@electron-bd.com
                        </p>
                        <p className="text-lg text-gray-700">
                            support@electron-bd.com
                        </p>
                        <p className="text-lg text-gray-700">
                            info@electron-bd.com
                        </p>
                    </div>
                </motion.div>
            </motion.div>

            {/* Map Section */}
            <motion.div
                className="w-full"
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                transition={{ duration: 1 }}
            >
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.1684239496385!2d90.37937077576811!3d23.741372678676612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755bf0f94125ff1%3A0x54ac79ee93bd9c96!2sElectron%20Engineering%20%26%20Power%20Services!5e0!3m2!1sen!2sbd!4v1744215771058!5m2!1sen!2sbd"
                    width="100%"
                    height="450"
                    className="rounded-sm border-0 shadow-lg"
                    allowFullScreen=""
                    loading="lazy"
                    title="Google Map of Control ware BD"
                ></iframe>
               
            </motion.div>
        </div>
    );
};

export default Visit;
