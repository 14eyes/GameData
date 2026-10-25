require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2501909_TriggerIn = class("Q2501909_TriggerIn", GadgetActorProxy)
Q2501909_TriggerIn.defaultAlias = "Q2501909_TriggerIn"
local Q25019ClientConfig = require("Quest/Client/Q25019ClientConfig")

local this
local subIDs = Q25019ClientConfig.SubIDs
local datas = Q25019ClientConfig.Datas
local npcs = Q25019ClientConfig.Npcs
local points = Q25019ClientConfig.Points

function Q2501909_TriggerIn:OnPostDataPrepare()
    print("Q2501909_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q2501909_TriggerIn:OnPostComponentPrepare()
    print("Q2501909_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25019)
end

function Q2501909_TriggerIn:TriggerIn()
    print("Q2501909_TriggerIn - TriggerIn")
    actorMgr:GetActor("25019"):RequestInteraction(npcs.Npc14264.alias, "", true)
    this:DestroySelf()
end

function Q2501909_TriggerIn:PreTriggerIn()
    print("Q2501909_TriggerIn - PreTriggerIn")
end

function Q2501909_TriggerIn:LightUpTriggerIn()
    print("Q2501909_TriggerIn - LightUpTriggerIn")
end

function Q2501909_TriggerIn:TriggerOut()
    print("Q2501909_TriggerIn - TriggerOut")
end

return Q2501909_TriggerIn
