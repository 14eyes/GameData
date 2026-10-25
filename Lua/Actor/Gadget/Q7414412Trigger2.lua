require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414412Trigger2 = class("Q7414412Trigger2", GadgetActorProxy)
Q7414412Trigger2.defaultAlias = "Q7414412Trigger2"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414412Trigger2:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414412Trigger2] OnPostDataPrepare")
    this = self
end

function Q7414412Trigger2:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414412Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(31, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414412Trigger2:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414412Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7414412)
    this:DestroySelf()
end

function Q7414412Trigger2:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414412Trigger2] PreTriggerIn")
end

function Q7414412Trigger2:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414412Trigger2] LightUpTriggerIn")
end

function Q7414412Trigger2:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414412Trigger2] TriggerOut")
end

return Q7414412Trigger2
