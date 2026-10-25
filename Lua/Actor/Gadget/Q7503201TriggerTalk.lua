require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503201TriggerTalk = class("Q7503201TriggerTalk", GadgetActorProxy)
Q7503201TriggerTalk.defaultAlias = "Q7503201TriggerTalk"
local Q75032ClientConfig = require("Quest/Client/Q75032ClientConfig")

local this
local subIDs = Q75032ClientConfig.SubIDs
local npcs = Q75032ClientConfig.Npcs
local datas = Q75032ClientConfig.Datas

function Q7503201TriggerTalk:OnPostDataPrepare()
    print("[MainId: 75032][Trigger: Q7503201TriggerTalk] OnPostDataPrepare")
    this = self
end

function Q7503201TriggerTalk:OnPostComponentPrepare()
    print("[MainId: 75032][Trigger: Q7503201TriggerTalk] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(12, 9, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75032)
end

function Q7503201TriggerTalk:TriggerIn()
    print("[MainId: 75032][Trigger: Q7503201TriggerTalk] TriggerIn")
    actorMgr:GetActor("75032"):RequestInteraction(npcs.Npc6138Data.alias, "", true)
    this:DestroySelf()
end

function Q7503201TriggerTalk:PreTriggerIn()
    print("[MainId: 75032][Trigger: Q7503201TriggerTalk] PreTriggerIn")
end

function Q7503201TriggerTalk:LightUpTriggerIn()
    print("[MainId: 75032][Trigger: Q7503201TriggerTalk] LightUpTriggerIn")
end

function Q7503201TriggerTalk:TriggerOut()
    print("[MainId: 75032][Trigger: Q7503201TriggerTalk] TriggerOut")
end

return Q7503201TriggerTalk
