require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007001Trigger = class("Q7007001Trigger", GadgetActorProxy)
Q7007001Trigger.defaultAlias = "Q7007001Trigger"
local Q70070ClientConfig = require("Quest/Client/Q70070ClientConfig")

local this
local subIDs = Q70070ClientConfig.SubIDs
local npcs = Q70070ClientConfig.Npcs
local points = Q70070ClientConfig.Points

function Q7007001Trigger:OnPostDataPrepare()
    print("Q7007001Trigger - OnPostDataPrepare")
    this = self
end

function Q7007001Trigger:OnPostComponentPrepare()
    print("Q7007001Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(45, 28, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70070)
end

function Q7007001Trigger:TriggerIn()
    print("Q7007001Trigger - TriggerIn")
    actorMgr:GetActor("70070"):GetQuestNpcActor(npcs.Lisa.alias, 70070):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Q7007001Trigger:PreTriggerIn()
    print("Q7007001Trigger - PreTriggerIn")
end

function Q7007001Trigger:LightUpTriggerIn()
    print("Q7007001Trigger - LightUpTriggerIn")
end

function Q7007001Trigger:TriggerOut()
    print("Q7007001Trigger - TriggerOut")
end

return Q7007001Trigger
