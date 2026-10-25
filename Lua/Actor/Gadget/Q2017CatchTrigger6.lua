require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2017CatchTrigger6 = class("Q2017CatchTrigger6", GadgetActorProxy)
Q2017CatchTrigger6.defaultAlias = "Q2017CatchTrigger6"
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

local subIDs = Q2017ClientConfig.SubIDs
local npcs = Q2017ClientConfig.Npcs
local gadgets = Q2017ClientConfig.Gadgets
local datas = Q2017ClientConfig.Datas

function Q2017CatchTrigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2017CatchTrigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2017CatchTrigger6:TriggerIn()
    print("TriggerIn")
    local questNpcActor = actorMgr:GetActor("2017"):GetQuestNpcActor("Npc12265")
    questNpcActor.PatrolPosNum = #npcs.Npc12265Data.PatrolPos
    questNpcActor.PatrolPos = npcs.Npc12265Data.PatrolPos
    questNpcActor.PatrolDir = npcs.Npc12265Data.PatrolDir
    questNpcActor.PatrolNext = 0
    questNpcActor:Start()
    self:DestroySelf()
end

function Q2017CatchTrigger6:TriggerOut()
    print("TriggerOut")
end

return Q2017CatchTrigger6
