require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76049TriggerDeleteGuer = class("Q76049TriggerDeleteGuer", GadgetActorProxy)
Q76049TriggerDeleteGuer.defaultAlias = "Q76049TriggerDeleteGuer"
local Q76049ClientConfig = require("Quest/Client/Q76049ClientConfig")

local this
local subIDs = Q76049ClientConfig.SubIDs
local datas = Q76049ClientConfig.Datas
local npcs = Q76049ClientConfig.Npcs
local points = Q76049ClientConfig.Points

function Q76049TriggerDeleteGuer:OnPostDataPrepare()
    print("Q76049TriggerDeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76049TriggerDeleteGuer:OnPostComponentPrepare()
    print("Q76049TriggerDeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76049)
end

function Q76049TriggerDeleteGuer:TriggerIn()
    print("Q76049TriggerDeleteGuer - TriggerIn")
end

function Q76049TriggerDeleteGuer:PreTriggerIn()
    print("Q76049TriggerDeleteGuer - PreTriggerIn")
end

function Q76049TriggerDeleteGuer:LightUpTriggerIn()
    print("Q76049TriggerDeleteGuer - LightUpTriggerIn")
end

function Q76049TriggerDeleteGuer:TriggerOut()
    print("Q76049TriggerDeleteGuer - TriggerOut")
    actorMgr:GetActor("76049"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    actorMgr:GetActor("76049"):DestroyQuestNpcActor(npcs.Npc15704.alias, 3)
    actorMgr:GetActor("76049"):DestroyQuestNpcActor(npcs.Npc15703.alias, 3)
    this:DestroySelf()
end

return Q76049TriggerDeleteGuer
