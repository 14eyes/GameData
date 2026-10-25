require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Warning = class("Q40089Warning", GadgetActorProxy)
Q40089Warning.defaultAlias = "Q40089Warning"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Warning:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Warning:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCommonPolygonTrigger(1, "Inazuma_kimota_001", 0, false, self.TriggerIn, self.TriggerOut)
end

function Q40089Warning:TriggerIn()
    print("TriggerIn")
end

function Q40089Warning:TriggerOut()
    print("TriggerOut")
    this:GetQuestNpcActor(npcs.Npc1013Data.alias):ClearFollowTask()
    actorMgr:GetActor("40089"):NarratorOnlyTaskByData(datas.WarningNarrator)
    actorMgr:CreateActorWithPos("Q40089RestartFollow", "Actor/Gadget/Q40089RestartFollow", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:DestroySelf()
end

return Q40089Warning
