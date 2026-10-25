require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403222NPCTrigger = class("Q1403222NPCTrigger", GadgetActorProxy)
Q1403222NPCTrigger.defaultAlias = "Q1403222NPCTrigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403222NPCTrigger:OnPostDataPrepare()
    print("Q1403222NPCTrigger - OnPostDataPrepare")
    this = self
end

function Q1403222NPCTrigger:OnPostComponentPrepare()
    print("Q1403222NPCTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403222NPCTrigger:TriggerIn()
    print("Q1403222NPCTrigger - TriggerIn")
    actorMgr:GetActor("14032"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("14032"):RequestInteraction(npcs.Npc14093.alias, "", true)
        this:DestroySelf()
    end)
end

function Q1403222NPCTrigger:PreTriggerIn()
    print("Q1403222NPCTrigger - PreTriggerIn")
end

function Q1403222NPCTrigger:LightUpTriggerIn()
    print("Q1403222NPCTrigger - LightUpTriggerIn")
end

function Q1403222NPCTrigger:TriggerOut()
    print("Q1403222NPCTrigger - TriggerOut")
end

return Q1403222NPCTrigger
