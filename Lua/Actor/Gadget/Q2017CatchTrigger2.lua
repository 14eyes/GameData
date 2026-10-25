require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2017CatchTrigger2 = class("Q2017CatchTrigger2", GadgetActorProxy)
Q2017CatchTrigger2.defaultAlias = "Q2017CatchTrigger2"
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

local subIDs = Q2017ClientConfig.SubIDs
local npcs = Q2017ClientConfig.Npcs
local gadgets = Q2017ClientConfig.Gadgets
local datas = Q2017ClientConfig.Datas

function Q2017CatchTrigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2017CatchTrigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2017CatchTrigger2:TriggerIn()
    print("TriggerIn")
    local questNpcActor = actorMgr:GetActor("2017"):GetQuestNpcActor("Npc12261")
    questNpcActor.PatrolPosNum = #npcs.Npc12261Data.PatrolPos
    questNpcActor.PatrolPos = npcs.Npc12261Data.PatrolPos
    questNpcActor.PatrolDir = npcs.Npc12261Data.PatrolDir
    questNpcActor.PatrolNext = 0
    questNpcActor:Start()
    self:DestroySelf()
end

function Q2017CatchTrigger2:TriggerOut()
    print("TriggerOut")
end

return Q2017CatchTrigger2
