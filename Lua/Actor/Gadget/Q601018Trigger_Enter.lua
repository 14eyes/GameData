require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601018Trigger_Enter = class("Q601018Trigger_Enter", GadgetActorProxy)
Q601018Trigger_Enter.defaultAlias = "Q601018Trigger_Enter"
local Q6010ClientConfig = require("Quest/Client/Q6010ClientConfig")

local this
local subIDs = Q6010ClientConfig.SubIDs
local datas = Q6010ClientConfig.Datas
local npcs = Q6010ClientConfig.Npcs
local points = Q6010ClientConfig.Points

function Q601018Trigger_Enter:OnPostDataPrepare()
    print("Q601018Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q601018Trigger_Enter:OnPostComponentPrepare()
    print("Q601018Trigger_Enter - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6010)
end

function Q601018Trigger_Enter:TriggerIn()
    print("Q601018Trigger_Enter - TriggerIn")
    actorUtils.FinishQuestID(true, 601018)
    this:DestroySelf()
end

function Q601018Trigger_Enter:PreTriggerIn()
    print("Q601018Trigger_Enter - PreTriggerIn")
end

function Q601018Trigger_Enter:LightUpTriggerIn()
    print("Q601018Trigger_Enter - LightUpTriggerIn")
end

function Q601018Trigger_Enter:TriggerOut()
    print("Q601018Trigger_Enter - TriggerOut")
end

return Q601018Trigger_Enter
