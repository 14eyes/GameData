require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328702sTrigger = class("Q7328702sTrigger", GadgetActorProxy)
Q7328702sTrigger.defaultAlias = "Q7328702sTrigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328702sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328702sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(300, 130, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328702sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73287"):NarratorOnlyTaskByData(datas.Narrator_7328702)
    this:DestroySelf()
end

function Q7328702sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328702sTrigger
