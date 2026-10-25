require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414105Triggerfail = class("Q7414105Triggerfail", GadgetActorProxy)
Q7414105Triggerfail.defaultAlias = "Q7414105Triggerfail"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414105Triggerfail:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414105Triggerfail] OnPostDataPrepare")
    this = self
end

function Q7414105Triggerfail:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414105Triggerfail] OnPostComponentPrepare")
    this:AddComponentTrigger(400, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414105Triggerfail:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414105Triggerfail] TriggerIn")
end

function Q7414105Triggerfail:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414105Triggerfail] PreTriggerIn")
end

function Q7414105Triggerfail:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414105Triggerfail] LightUpTriggerIn")
end

function Q7414105Triggerfail:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414105Triggerfail] TriggerOut")
    actorUtils.FinishQuestID(true, 7414105)
    this:DestroySelf()
end

return Q7414105Triggerfail
