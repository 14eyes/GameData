require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318739_DoorTrigger = class("Q7318739_DoorTrigger", GadgetActorProxy)
Q7318739_DoorTrigger.defaultAlias = "Q7318739_DoorTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318739_DoorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318739_DoorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318739_DoorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73187"):NarratorOnlyTaskByData(datas.s7318739_Door)
    this:DestroySelf()
end

function Q7318739_DoorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318739_DoorTrigger
