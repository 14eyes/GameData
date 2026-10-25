require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76050TriggerDeleteGuer = class("Q76050TriggerDeleteGuer", GadgetActorProxy)
Q76050TriggerDeleteGuer.defaultAlias = "Q76050TriggerDeleteGuer"
local Q76050ClientConfig = require("Quest/Client/Q76050ClientConfig")

local this
local subIDs = Q76050ClientConfig.SubIDs
local datas = Q76050ClientConfig.Datas
local npcs = Q76050ClientConfig.Npcs
local points = Q76050ClientConfig.Points

function Q76050TriggerDeleteGuer:OnPostDataPrepare()
    print("Q76050TriggerDeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76050TriggerDeleteGuer:OnPostComponentPrepare()
    print("Q76050TriggerDeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76050)
end

function Q76050TriggerDeleteGuer:TriggerIn()
    print("Q76050TriggerDeleteGuer - TriggerIn")
end

function Q76050TriggerDeleteGuer:PreTriggerIn()
    print("Q76050TriggerDeleteGuer - PreTriggerIn")
end

function Q76050TriggerDeleteGuer:LightUpTriggerIn()
    print("Q76050TriggerDeleteGuer - LightUpTriggerIn")
end

function Q76050TriggerDeleteGuer:TriggerOut()
    print("Q76050TriggerDeleteGuer - TriggerOut")
    actorMgr:GetActor("76050"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76050TriggerDeleteGuer
