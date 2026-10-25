require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14027ForceTrigger = class("Q14027ForceTrigger", GadgetActorProxy)
Q14027ForceTrigger.defaultAlias = "Q14027ForceTrigger"
local Q14027ClientConfig = require("Quest/Client/Q14027ClientConfig")

local this
local subIDs = Q14027ClientConfig.SubIDs
local datas = Q14027ClientConfig.Datas
local npcs = Q14027ClientConfig.Npcs
local points = Q14027ClientConfig.Points

function Q14027ForceTrigger:OnPostDataPrepare()
    print("Q14027ForceTrigger - OnPostDataPrepare")
    this = self
end

function Q14027ForceTrigger:OnPostComponentPrepare()
    print("Q14027ForceTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14027)
end

function Q14027ForceTrigger:TriggerIn()
    print("Q14027ForceTrigger - TriggerIn")
    actorMgr:GetActor("14027"):RequestInteraction(npcs.Npc14056.alias, "", true)
end

function Q14027ForceTrigger:PreTriggerIn()
    print("Q14027ForceTrigger - PreTriggerIn")
end

function Q14027ForceTrigger:LightUpTriggerIn()
    print("Q14027ForceTrigger - LightUpTriggerIn")
end

function Q14027ForceTrigger:TriggerOut()
    print("Q14027ForceTrigger - TriggerOut")
end

return Q14027ForceTrigger
