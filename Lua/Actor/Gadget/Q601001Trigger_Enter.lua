require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601001Trigger_Enter = class("Q601001Trigger_Enter", GadgetActorProxy)
Q601001Trigger_Enter.defaultAlias = "Q601001Trigger_Enter"
local Q6010ClientConfig = require("Quest/Client/Q6010ClientConfig")

local this
local subIDs = Q6010ClientConfig.SubIDs
local datas = Q6010ClientConfig.Datas
local npcs = Q6010ClientConfig.Npcs
local points = Q6010ClientConfig.Points

function Q601001Trigger_Enter:OnPostDataPrepare()
    print("Q601001Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q601001Trigger_Enter:OnPostComponentPrepare()
    print("Q601001Trigger_Enter - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(16, 8, 6, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6010)
end

function Q601001Trigger_Enter:TriggerIn()
    print("Q601001Trigger_Enter - TriggerIn")
    actorMgr:GetActor("6010"):QuestNarratorTask(datas.NarratorWithId_601099, nil)
    this:DestroySelf()
end

function Q601001Trigger_Enter:PreTriggerIn()
    print("Q601001Trigger_Enter - PreTriggerIn")
end

function Q601001Trigger_Enter:LightUpTriggerIn()
    print("Q601001Trigger_Enter - LightUpTriggerIn")
end

function Q601001Trigger_Enter:TriggerOut()
    print("Q601001Trigger_Enter - TriggerOut")
end

return Q601001Trigger_Enter
