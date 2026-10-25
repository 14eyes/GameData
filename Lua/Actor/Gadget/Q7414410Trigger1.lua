require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414410Trigger1 = class("Q7414410Trigger1", GadgetActorProxy)
Q7414410Trigger1.defaultAlias = "Q7414410Trigger1"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414410Trigger1:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414410Trigger1] OnPostDataPrepare")
    this = self
end

function Q7414410Trigger1:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414410Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414410Trigger1:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414410Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7414410)
    this:DestroySelf()
end

function Q7414410Trigger1:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414410Trigger1] PreTriggerIn")
end

function Q7414410Trigger1:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414410Trigger1] LightUpTriggerIn")
end

function Q7414410Trigger1:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414410Trigger1] TriggerOut")
end

return Q7414410Trigger1
