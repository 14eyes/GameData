require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600001Trigger_RMD2 = class("Q7600001Trigger_RMD2", GadgetActorProxy)
Q7600001Trigger_RMD2.defaultAlias = "Q7600001Trigger_RMD2"
local Q76000ClientConfig = require("Quest/Client/Q76000ClientConfig")

local this
local subIDs = Q76000ClientConfig.SubIDs
local datas = Q76000ClientConfig.Datas
local npcs = Q76000ClientConfig.Npcs
local points = Q76000ClientConfig.Points

function Q7600001Trigger_RMD2:OnPostDataPrepare()
    print("Q7600001Trigger_RMD2 - OnPostDataPrepare")
    this = self
end

function Q7600001Trigger_RMD2:OnPostComponentPrepare()
    print("Q7600001Trigger_RMD2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76000)
end

function Q7600001Trigger_RMD2:TriggerIn()
    print("Q7600001Trigger_RMD2 - TriggerIn")
    actorMgr:GetActor("76000"):QuestNarratorTask(datas.NarratorWithId_760009902_Down1, nil)
    this:DestroySelf()
end

function Q7600001Trigger_RMD2:PreTriggerIn()
    print("Q7600001Trigger_RMD2 - PreTriggerIn")
end

function Q7600001Trigger_RMD2:LightUpTriggerIn()
    print("Q7600001Trigger_RMD2 - LightUpTriggerIn")
end

function Q7600001Trigger_RMD2:TriggerOut()
    print("Q7600001Trigger_RMD2 - TriggerOut")
end

return Q7600001Trigger_RMD2
