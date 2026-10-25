require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328706sTrigger = class("Q7328706sTrigger", GadgetActorProxy)
Q7328706sTrigger.defaultAlias = "Q7328706sTrigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328706sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328706sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 40, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328706sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73287"):NarratorOnlyTaskByData(datas.Narrator_7328706)
    this:DestroySelf()
end

function Q7328706sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328706sTrigger
