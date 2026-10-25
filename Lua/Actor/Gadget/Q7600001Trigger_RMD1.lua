require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600001Trigger_RMD1 = class("Q7600001Trigger_RMD1", GadgetActorProxy)
Q7600001Trigger_RMD1.defaultAlias = "Q7600001Trigger_RMD1"
local Q76000ClientConfig = require("Quest/Client/Q76000ClientConfig")

local this
local subIDs = Q76000ClientConfig.SubIDs
local datas = Q76000ClientConfig.Datas
local npcs = Q76000ClientConfig.Npcs
local points = Q76000ClientConfig.Points

function Q7600001Trigger_RMD1:OnPostDataPrepare()
    print("Q7600001Trigger_RMD1 - OnPostDataPrepare")
    this = self
end

function Q7600001Trigger_RMD1:OnPostComponentPrepare()
    print("Q7600001Trigger_RMD1 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76000)
end

function Q7600001Trigger_RMD1:TriggerIn()
    print("Q7600001Trigger_RMD1 - TriggerIn")
    actorMgr:GetActor("76000"):QuestNarratorTask(datas.NarratorWithId_760009901_Out, nil)
    this:DestroySelf()
end

function Q7600001Trigger_RMD1:PreTriggerIn()
    print("Q7600001Trigger_RMD1 - PreTriggerIn")
end

function Q7600001Trigger_RMD1:LightUpTriggerIn()
    print("Q7600001Trigger_RMD1 - LightUpTriggerIn")
end

function Q7600001Trigger_RMD1:TriggerOut()
    print("Q7600001Trigger_RMD1 - TriggerOut")
end

return Q7600001Trigger_RMD1
