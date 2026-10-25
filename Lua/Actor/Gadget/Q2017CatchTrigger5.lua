require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2017CatchTrigger5 = class("Q2017CatchTrigger5", GadgetActorProxy)
Q2017CatchTrigger5.defaultAlias = "Q2017CatchTrigger5"
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

local subIDs = Q2017ClientConfig.SubIDs
local npcs = Q2017ClientConfig.Npcs
local gadgets = Q2017ClientConfig.Gadgets
local datas = Q2017ClientConfig.Datas

function Q2017CatchTrigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2017CatchTrigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2017CatchTrigger5:TriggerIn()
    print("TriggerIn")
    local questNpcActor = actorMgr:GetActor("2017"):GetQuestNpcActor("Npc12264")
    questNpcActor.PatrolPosNum = #npcs.Npc12264Data.PatrolPos
    questNpcActor.PatrolPos = npcs.Npc12264Data.PatrolPos
    questNpcActor.PatrolDir = npcs.Npc12264Data.PatrolDir
    questNpcActor.PatrolNext = 0
    questNpcActor:Start()
    self:DestroySelf()
end

function Q2017CatchTrigger5:TriggerOut()
    print("TriggerOut")
end

return Q2017CatchTrigger5
