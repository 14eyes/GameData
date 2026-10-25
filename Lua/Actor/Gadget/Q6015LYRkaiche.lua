require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q6015LYRkaiche = class("Q6015LYRkaiche", GadgetActorProxy)
Q6015LYRkaiche.defaultAlias = "Q6015LYRkaiche"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q6015LYRkaiche:OnPostDataPrepare()
    print("Q6015LYRkaiche - OnPostDataPrepare")
    this = self
end

function Q6015LYRkaiche:OnPostComponentPrepare()
    print("Q6015LYRkaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q6015LYRkaiche:TriggerIn()
    print("Q6015LYRkaiche - TriggerIn")
    actorMgr:GetActor("6015"):EnterSceneLookCameraByParam(datas.CameraLook_LYR)
    actorMgr:GetActor("6015"):QuestNarratorTask(datas.Q6015KaicheLYR, nil)
    this:DestroySelf()
end

function Q6015LYRkaiche:PreTriggerIn()
    print("Q6015LYRkaiche - PreTriggerIn")
end

function Q6015LYRkaiche:LightUpTriggerIn()
    print("Q6015LYRkaiche - LightUpTriggerIn")
end

function Q6015LYRkaiche:TriggerOut()
    print("Q6015LYRkaiche - TriggerOut")
end

return Q6015LYRkaiche
