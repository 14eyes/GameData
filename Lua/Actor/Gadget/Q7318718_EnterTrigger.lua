require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318718_EnterTrigger = class("Q7318718_EnterTrigger", GadgetActorProxy)
Q7318718_EnterTrigger.defaultAlias = "Q7318718_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318718_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318718_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318718_EnterTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73187")
    actor:NarratorOnlyTaskByData(datas.s7318718_Rmd, function(arg1)
        actorUtils.FinishQuestID(false, 7318718)
    end, 73187)

    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7318718_Camera").pos, 0, 4, true, false)
    this:DestroySelf()
end

function Q7318718_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318718_EnterTrigger
