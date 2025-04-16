import { motion } from "framer-motion";

const ImageText = ({ description, imageUrl, reverse }) => {
    return (
        <>
              <div
            className={`flex flex-col md:flex-row ${
                reverse ? "md:flex-row-reverse" : "md:flex-row"
            } items-center gap-10 md:gap-16 p-6 my-10 md:my-32`}
        >
            {/* Left Side Image */}
            <motion.div
                className="md:w-1/2 w-full overflow-hidden rounded-lg shadow-lg"
                initial={{ opacity: 0, scale: 0.8 }}
                whileInView={{ opacity: 1, scale: 1 }}
                transition={{ duration: 0.8, ease: "easeOut", delay: 0.2 }}
                viewport={{ once: true }}
            >
                <div className="relative w-full rounded-lg overflow-hidden">
                    <motion.img
                        src={imageUrl}
                        alt="Project Image"
                        className="w-full h-[300px] md:h-[550px] object-fill md:object-cover rounded-lg shadow-md transition-transform duration-500"
                        whileHover={{ scale: 1.1 }}
                    />
                </div>
            </motion.div>

            {/* Right Side Content */}
            <motion.div
                className="md:w-1/2 w-full text-gray-800"
                initial={{ opacity: 0, x: reverse ? 100 : -100 }}
                whileInView={{ opacity: 1, x: 0 }}
                transition={{ duration: 0.8, ease: "easeOut" }}
                viewport={{ once: true }}
            >
                <p className="mt-2 md:whitespace-pre-line text-lg leading-relaxed">
                    {description}
                </p>
            </motion.div>
        </div>
        </>
    );
};

export default ImageText;
