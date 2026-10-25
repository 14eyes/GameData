require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401010_TriggerIn = class("Q401010_TriggerIn", GadgetActorProxy)
Q401010_TriggerIn.defaultAlias = "Q401010_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401010_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401010_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401010_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401010_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 20, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401010_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401010_TriggerIn] TriggerIn")
    actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc13477Data.alias, "", true)
    this:DestroySelf()
end

function Q401010_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401010_TriggerIn] PreTriggerIn")
end

function Q401010_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401010_TriggerIn] LightUpTriggerIn")
end

function Q401010_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401010_TriggerIn] TriggerOut")
end

return Q401010_TriggerIn
