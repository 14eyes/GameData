require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614820Trigger_RollBack = class("Q7614820Trigger_RollBack", GadgetActorProxy)
Q7614820Trigger_RollBack.defaultAlias = "Q7614820Trigger_RollBack"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614820Trigger_RollBack:OnPostDataPrepare()
    print("Q7614820Trigger_RollBack - OnPostDataPrepare")
    this = self
end

function Q7614820Trigger_RollBack:OnPostComponentPrepare()
    print("Q7614820Trigger_RollBack - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(500, 300, 200, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614820Trigger_RollBack:TriggerIn()
    print("Q7614820Trigger_RollBack - TriggerIn")
end

function Q7614820Trigger_RollBack:PreTriggerIn()
    print("Q7614820Trigger_RollBack - PreTriggerIn")
end

function Q7614820Trigger_RollBack:LightUpTriggerIn()
    print("Q7614820Trigger_RollBack - LightUpTriggerIn")
end

function Q7614820Trigger_RollBack:TriggerOut()
    print("Q7614820Trigger_RollBack - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7614820})
end

return Q7614820Trigger_RollBack
