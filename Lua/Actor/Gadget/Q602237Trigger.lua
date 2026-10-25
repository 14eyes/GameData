require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602237Trigger = class("Q602237Trigger", GadgetActorProxy)
Q602237Trigger.defaultAlias = "Q602237Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602237Trigger:OnPostDataPrepare()
    print("Q602237Trigger - OnPostDataPrepare")
    this = self
end

function Q602237Trigger:OnPostComponentPrepare()
    print("Q602237Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602237Trigger:TriggerIn()
    print("Q602237Trigger - TriggerIn")
    actorUtils.HandleQuestLoadingCtxOpForLua("AQ602201_p1", 1)
end

function Q602237Trigger:PreTriggerIn()
    print("Q602237Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602237)
    this:DestroySelf()
end

function Q602237Trigger:LightUpTriggerIn()
    print("Q602237Trigger - LightUpTriggerIn")
end

function Q602237Trigger:TriggerOut()
    print("Q602237Trigger - TriggerOut")
end

return Q602237Trigger
