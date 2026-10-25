require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13031TriggerQQ = class("Q13031TriggerQQ", GadgetActorProxy)
Q13031TriggerQQ.defaultAlias = "Q13031TriggerQQ"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q13031TriggerQQ:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q13031TriggerQQ] OnPostDataPrepare")
    this = self
end

function Q13031TriggerQQ:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q13031TriggerQQ] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(44.18729, 22.77548, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13031TriggerQQ:TriggerIn()
    print("[MainId: 13031][Trigger: Q13031TriggerQQ] TriggerIn")
    local actor = actorMgr:GetActor("13031")
    actor:EnterSceneLookCamera({x = -239.697, y = 202.018, z = 3067.484}, 0, 3, true, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_QQ)
    actorUtils.FinishQuestID(false, 1303111)
    this:DestroySelf()
end

function Q13031TriggerQQ:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q13031TriggerQQ] PreTriggerIn")
end

function Q13031TriggerQQ:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q13031TriggerQQ] LightUpTriggerIn")
end

function Q13031TriggerQQ:TriggerOut()
    print("[MainId: 13031][Trigger: Q13031TriggerQQ] TriggerOut")
end

return Q13031TriggerQQ
