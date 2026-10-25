require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318736_RmdTrigger = class("Q7318736_RmdTrigger", GadgetActorProxy)
Q7318736_RmdTrigger.defaultAlias = "Q7318736_RmdTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318736_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318736_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318736_RmdTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73187")
    actor:NarratorOnlyTaskByData(datas.s7318736_Rmd)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7318736_Camera").pos, 0, 3, true, false)
    this:DestroySelf()
end

function Q7318736_RmdTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318736_RmdTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318736_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318736_RmdTrigger
