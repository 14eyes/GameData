require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14030LeftTrigger = class("Q14030LeftTrigger", GadgetActorProxy)
Q14030LeftTrigger.defaultAlias = "Q14030LeftTrigger"
local Q14030ClientConfig = require("Quest/Client/Q14030ClientConfig")

local this
local subIDs = Q14030ClientConfig.SubIDs
local datas = Q14030ClientConfig.Datas
local npcs = Q14030ClientConfig.Npcs
local points = Q14030ClientConfig.Points

function Q14030LeftTrigger:OnPostDataPrepare()
    print("Q14030LeftTrigger - OnPostDataPrepare")
    this = self
end

function Q14030LeftTrigger:OnPostComponentPrepare()
    print("Q14030LeftTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14030)
end

function Q14030LeftTrigger:TriggerIn()
    print("Q14030LeftTrigger - TriggerIn")
end

function Q14030LeftTrigger:PreTriggerIn()
    print("Q14030LeftTrigger - PreTriggerIn")
end

function Q14030LeftTrigger:LightUpTriggerIn()
    print("Q14030LeftTrigger - LightUpTriggerIn")
end

function Q14030LeftTrigger:TriggerOut()
    print("Q14030LeftTrigger - TriggerOut")
    actorMgr:GetActor("14030"):SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:DestroySelf()
end

return Q14030LeftTrigger
