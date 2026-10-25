require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321934sTrigger = class("Q7321934sTrigger", GadgetActorProxy)
Q7321934sTrigger.defaultAlias = "Q7321934sTrigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321934sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321934sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 10, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321934sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321921)
    this:DestroySelf()
end

function Q7321934sTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7321934sTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7321934sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7321934sTrigger
