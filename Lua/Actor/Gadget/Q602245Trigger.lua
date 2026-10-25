require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602245Trigger = class("Q602245Trigger", GadgetActorProxy)
Q602245Trigger.defaultAlias = "Q602245Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602245Trigger:OnPostDataPrepare()
    print("Q602245Trigger - OnPostDataPrepare")
    this = self
end

function Q602245Trigger:OnPostComponentPrepare()
    print("Q602245Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602245Trigger:TriggerIn()
    print("Q602245Trigger - TriggerIn")
end

function Q602245Trigger:PreTriggerIn()
    print("Q602245Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602245)
    this:DestroySelf()
end

function Q602245Trigger:LightUpTriggerIn()
    print("Q602245Trigger - LightUpTriggerIn")
end

function Q602245Trigger:TriggerOut()
    print("Q602245Trigger - TriggerOut")
end

return Q602245Trigger
