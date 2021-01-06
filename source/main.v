module main

#include "switch.h"

struct C.PrintConsole {}

fn C.appletMainLoop(voidptr) bool
fn C.consoleInit(&C.PrintConsole) &C.PrintConsole
fn C.consoleUpdate(&C.PrintConsole) voidptr
fn C.consoleExit(&C.PrintConsole) voidptr

fn main() {
	C.consoleInit(0)
	for C.appletMainLoop() {
		C.consoleUpdate(0)
		println("\x1b[2JHi from V!")
	}
	C.consoleExit(0)
}
