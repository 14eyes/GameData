require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76120guer = class("Q76120guer", GadgetActorProxy)
Q76120guer.defaultAlias = "Q76120guer"
local Q76120ClientConfig = require("Quest/Client/Q76120ClientConfig")

local this
local subIDs = Q76120ClientConfig.SubIDs
local datas = Q76120ClientConfig.Datas
local npcs = Q76120ClientConfig.Npcs
local points = Q76120ClientConfig.Points

function Q76120guer:OnPostDataPrepare()
    print("Q76120guer - OnPostDataPrepare")
    this = self
end

function Q76120guer:OnPostComponentPrepare()
    print("Q76120guer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76120)
end

function Q76120guer:TriggerIn()
    print("Q76120guer - TriggerIn")
end

function Q76120guer:PreTriggerIn()
    print("Q76120guer - PreTriggerIn")
end

function Q76120guer:LightUpTriggerIn()
    print("Q76120guer - LightUpTriggerIn")
end

function Q76120guer:TriggerOut()
    print("Q76120guer - TriggerOut")
    actorMgr:GetActor("76120"):DestroyQuestNpcActor(npcs.Npc1318_1.alias, 3)
    actorMgr:GetActor("76120"):DestroyQuestNpcActor(npcs.Npc15702.alias, 3)
    this:DestroySelf()
end

return Q76120guer
