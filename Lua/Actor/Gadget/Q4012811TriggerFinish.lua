require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012811TriggerFinish = class("Q4012811TriggerFinish", GadgetActorProxy)
Q4012811TriggerFinish.defaultAlias = "Q4012811TriggerFinish"
local Q40128ClientConfig = require("Quest/Client/Q40128ClientConfig")

local this
local subIDs = Q40128ClientConfig.SubIDs
local npcs = Q40128ClientConfig.Npcs
local points = Q40128ClientConfig.Points
local datas = Q40128ClientConfig.Datas

function Q4012811TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40128][Trigger: Q4012811TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012811TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40128][Trigger: Q4012811TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012811TriggerFinish:TriggerIn()
    print("[MainId: 40128][Trigger: Q4012811TriggerFinish] TriggerIn")
    local actor = actorMgr:GetActor("40128")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4012801, nil, 40128)
    actorUtils.FinishQuestID(false, 4012811)
    actor:EnterSceneLookCamera(datas.VC3_FootPrint, 0, 3, true, true)
    this:DestroySelf()
end

function Q4012811TriggerFinish:PreTriggerIn()
    print("[MainId: 40128][Trigger: Q4012811TriggerFinish] PreTriggerIn")
end

function Q4012811TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40128][Trigger: Q4012811TriggerFinish] LightUpTriggerIn")
end

function Q4012811TriggerFinish:TriggerOut()
    print("[MainId: 40128][Trigger: Q4012811TriggerFinish] TriggerOut")
end

return Q4012811TriggerFinish
