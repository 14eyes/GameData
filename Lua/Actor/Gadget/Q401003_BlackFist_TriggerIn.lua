require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401003_BlackFist_TriggerIn = class("Q401003_BlackFist_TriggerIn", GadgetActorProxy)
Q401003_BlackFist_TriggerIn.defaultAlias = "Q401003_BlackFist_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401003_BlackFist_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401003_BlackFist_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401003_BlackFist_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401003_BlackFist_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401003_BlackFist_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401003_BlackFist_TriggerIn] TriggerIn")
    actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc13648Data.alias)
end

function Q401003_BlackFist_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401003_BlackFist_TriggerIn] PreTriggerIn")
end

function Q401003_BlackFist_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401003_BlackFist_TriggerIn] LightUpTriggerIn")
end

function Q401003_BlackFist_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401003_BlackFist_TriggerIn] TriggerOut")
end

return Q401003_BlackFist_TriggerIn
