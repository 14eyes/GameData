require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76052TriggerDeleteGuer = class("Q76052TriggerDeleteGuer", GadgetActorProxy)
Q76052TriggerDeleteGuer.defaultAlias = "Q76052TriggerDeleteGuer"
local Q76052ClientConfig = require("Quest/Client/Q76052ClientConfig")

local this
local subIDs = Q76052ClientConfig.SubIDs
local datas = Q76052ClientConfig.Datas
local npcs = Q76052ClientConfig.Npcs
local points = Q76052ClientConfig.Points

function Q76052TriggerDeleteGuer:OnPostDataPrepare()
    print("Q76052TriggerDeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76052TriggerDeleteGuer:OnPostComponentPrepare()
    print("Q76052TriggerDeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76052)
end

function Q76052TriggerDeleteGuer:TriggerIn()
    print("Q76052TriggerDeleteGuer - TriggerIn")
end

function Q76052TriggerDeleteGuer:PreTriggerIn()
    print("Q76052TriggerDeleteGuer - PreTriggerIn")
end

function Q76052TriggerDeleteGuer:LightUpTriggerIn()
    print("Q76052TriggerDeleteGuer - LightUpTriggerIn")
end

function Q76052TriggerDeleteGuer:TriggerOut()
    print("Q76052TriggerDeleteGuer - TriggerOut")
    actorMgr:GetActor("76052"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    actorMgr:GetActor("76052"):CancelRangeStoryByQuest(117605200)
    this:DestroySelf()
end

return Q76052TriggerDeleteGuer
