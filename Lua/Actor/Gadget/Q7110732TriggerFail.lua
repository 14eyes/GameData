require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110732TriggerFail = class("Q7110732TriggerFail", GadgetActorProxy)
Q7110732TriggerFail.defaultAlias = "Q7110732TriggerFail"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110732TriggerFail:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110732TriggerFail] OnPostDataPrepare")
    this = self
end

function Q7110732TriggerFail:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110732TriggerFail] OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110732TriggerFail:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110732TriggerFail] TriggerIn")
end

function Q7110732TriggerFail:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110732TriggerFail] PreTriggerIn")
end

function Q7110732TriggerFail:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110732TriggerFail] LightUpTriggerIn")
end

function Q7110732TriggerFail:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110732TriggerFail] TriggerOut")
    local actor = actorMgr:GetActor("71107")
    actorUtils.FinishQuestID(true, 7110732)
    actorUtils.FinishQuestID(true, 7110724)
    actor:ClearNarratorTask()
    actor:GetQuestNpcActor(npcs.Npc2484Data.alias):ClearFollowTask()
    this:DestroySelf()
end

return Q7110732TriggerFail
