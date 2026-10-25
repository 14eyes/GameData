require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408202EnterTriggerin = class("Q7408202EnterTriggerin", GadgetActorProxy)
Q7408202EnterTriggerin.defaultAlias = "Q7408202EnterTriggerin"
local Q74082ClientConfig = require("Quest/Client/Q74082ClientConfig")

local this
local subIDs = Q74082ClientConfig.SubIDs
local npcs = Q74082ClientConfig.Npcs
local points = Q74082ClientConfig.Points
local datas = Q74082ClientConfig.Datas

function Q7408202EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74082][Trigger: Q7408202EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408202EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74082][Trigger: Q7408202EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408202EnterTriggerin:TriggerIn()
    print("[MainId: 74082][Trigger: Q7408202EnterTriggerin] TriggerIn")
    local actor = actorMgr:GetActor("74082")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId02)
    actor:CallDelay(0.8, function(arg1)
        local actor = actorMgr:GetActor("74082")
        actorUtils.FinishQuestID(false, 7408202)
        this:DestroySelf()
    end)

    actor:EnterSceneLookCamera(points.TPos_Q7408203EnterTriggerin.pos, 0.5, 1, false, false)
end

function Q7408202EnterTriggerin:PreTriggerIn()
    print("[MainId: 74082][Trigger: Q7408202EnterTriggerin] PreTriggerIn")
end

function Q7408202EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74082][Trigger: Q7408202EnterTriggerin] LightUpTriggerIn")
end

function Q7408202EnterTriggerin:TriggerOut()
    print("[MainId: 74082][Trigger: Q7408202EnterTriggerin] TriggerOut")
end

return Q7408202EnterTriggerin
