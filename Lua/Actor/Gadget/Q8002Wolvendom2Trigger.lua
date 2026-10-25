require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8002Wolvendom2Trigger = class("Q8002Wolvendom2Trigger", GadgetActorProxy)
Q8002Wolvendom2Trigger.defaultAlias = "Q8002Wolvendom2Trigger"
local Q8002ClientConfig = require("Quest/Client/Q8002ClientConfig")

local subIDs = Q8002ClientConfig.SubIDs
local npcs = Q8002ClientConfig.Npcs
local datas = Q8002ClientConfig.Datas

function Q8002Wolvendom2Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8002Wolvendom2Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8002Wolvendom2Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8002"):FinishQuestID(false, 800206)
    actorMgr:GetActor("8002"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q8002Boreas").pos, 0, 2, true, false)
    self:DestroySelf()
end

function Q8002Wolvendom2Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8002Wolvendom2Trigger
