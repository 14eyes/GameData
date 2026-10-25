require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403223NPCTrigger = class("Q1403223NPCTrigger", GadgetActorProxy)
Q1403223NPCTrigger.defaultAlias = "Q1403223NPCTrigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403223NPCTrigger:OnPostDataPrepare()
    print("Q1403223NPCTrigger - OnPostDataPrepare")
    this = self
end

function Q1403223NPCTrigger:OnPostComponentPrepare()
    print("Q1403223NPCTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403223NPCTrigger:TriggerIn()
    print("Q1403223NPCTrigger - TriggerIn")
    actorMgr:GetActor("14032"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("14032"):RequestInteraction(npcs.Npc14094.alias, "", true)
        this:DestroySelf()
    end)
end

function Q1403223NPCTrigger:PreTriggerIn()
    print("Q1403223NPCTrigger - PreTriggerIn")
end

function Q1403223NPCTrigger:LightUpTriggerIn()
    print("Q1403223NPCTrigger - LightUpTriggerIn")
end

function Q1403223NPCTrigger:TriggerOut()
    print("Q1403223NPCTrigger - TriggerOut")
end

return Q1403223NPCTrigger
