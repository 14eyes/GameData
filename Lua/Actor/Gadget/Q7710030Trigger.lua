require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710030Trigger = class("Q7710030Trigger", GadgetActorProxy)
Q7710030Trigger.defaultAlias = "Q7710030Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710030Trigger:OnPostDataPrepare()
    print("Q7710030Trigger - OnPostDataPrepare")
    this = self
end

function Q7710030Trigger:OnPostComponentPrepare()
    print("Q7710030Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710030Trigger:TriggerIn()
    print("Q7710030Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710030})
    this:DestroySelf()
end

function Q7710030Trigger:PreTriggerIn()
    print("Q7710030Trigger - PreTriggerIn")
end

function Q7710030Trigger:LightUpTriggerIn()
    print("Q7710030Trigger - LightUpTriggerIn")
end

function Q7710030Trigger:TriggerOut()
    print("Q7710030Trigger - TriggerOut")
end

return Q7710030Trigger
