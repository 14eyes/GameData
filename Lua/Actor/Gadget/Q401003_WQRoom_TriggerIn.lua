require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401003_WQRoom_TriggerIn = class("Q401003_WQRoom_TriggerIn", GadgetActorProxy)
Q401003_WQRoom_TriggerIn.defaultAlias = "Q401003_WQRoom_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401003_WQRoom_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401003_WQRoom_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401003_WQRoom_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401003_WQRoom_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401003_WQRoom_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401003_WQRoom_TriggerIn] TriggerIn")
    actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc13652Data.alias)
end

function Q401003_WQRoom_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401003_WQRoom_TriggerIn] PreTriggerIn")
end

function Q401003_WQRoom_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401003_WQRoom_TriggerIn] LightUpTriggerIn")
end

function Q401003_WQRoom_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401003_WQRoom_TriggerIn] TriggerOut")
end

return Q401003_WQRoom_TriggerIn
