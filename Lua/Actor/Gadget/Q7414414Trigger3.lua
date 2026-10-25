require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414414Trigger3 = class("Q7414414Trigger3", GadgetActorProxy)
Q7414414Trigger3.defaultAlias = "Q7414414Trigger3"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414414Trigger3:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414414Trigger3] OnPostDataPrepare")
    this = self
end

function Q7414414Trigger3:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414414Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414414Trigger3:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414414Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 7414414)
    this:DestroySelf()
end

function Q7414414Trigger3:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414414Trigger3] PreTriggerIn")
end

function Q7414414Trigger3:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414414Trigger3] LightUpTriggerIn")
end

function Q7414414Trigger3:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414414Trigger3] TriggerOut")
end

return Q7414414Trigger3
