require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4014005Trigger01 = class("Q4014005Trigger01", GadgetActorProxy)
Q4014005Trigger01.defaultAlias = "Q4014005Trigger01"
local Q40140ClientConfig = require("Quest/Client/Q40140ClientConfig")

local this
local subIDs = Q40140ClientConfig.SubIDs
local npcs = Q40140ClientConfig.Npcs
local points = Q40140ClientConfig.Points
local datas = Q40140ClientConfig.Datas

function Q4014005Trigger01:OnPostDataPrepare()
    print("[MainId: 40140][Trigger: Q4014005Trigger01] OnPostDataPrepare")
    this = self
end

function Q4014005Trigger01:OnPostComponentPrepare()
    print("[MainId: 40140][Trigger: Q4014005Trigger01] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4014005Trigger01:TriggerIn()
    print("[MainId: 40140][Trigger: Q4014005Trigger01] TriggerIn")
    actorMgr:GetActor("40140"):CallDelayByQuest("1", 1, function(arg1)
        local actor = actorMgr:GetActor("40140")
        actor:NarratorOnlyTaskByData(datas.Narrator_4014097, nil, 40140)
        actor:EnterSceneLookCamera({x = 1076.618, y = 355.882, z = 1537.449}, 0, 2, false, false)
        this:DestroySelf()
    end)
end

function Q4014005Trigger01:PreTriggerIn()
    print("[MainId: 40140][Trigger: Q4014005Trigger01] PreTriggerIn")
end

function Q4014005Trigger01:LightUpTriggerIn()
    print("[MainId: 40140][Trigger: Q4014005Trigger01] LightUpTriggerIn")
end

function Q4014005Trigger01:TriggerOut()
    print("[MainId: 40140][Trigger: Q4014005Trigger01] TriggerOut")
end

return Q4014005Trigger01
