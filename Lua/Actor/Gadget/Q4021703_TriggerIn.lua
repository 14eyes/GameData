require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021703_TriggerIn = class("Q4021703_TriggerIn", GadgetActorProxy)
Q4021703_TriggerIn.defaultAlias = "Q4021703_TriggerIn"
local Q40217ClientConfig = require("Quest/Client/Q40217ClientConfig")

local this
local subIDs = Q40217ClientConfig.SubIDs
local datas = Q40217ClientConfig.Datas
local npcs = Q40217ClientConfig.Npcs
local points = Q40217ClientConfig.Points

function Q4021703_TriggerIn:OnPostDataPrepare()
    print("Q4021703_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4021703_TriggerIn:OnPostComponentPrepare()
    print("Q4021703_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40217)
end

function Q4021703_TriggerIn:TriggerIn()
    print("Q4021703_TriggerIn - TriggerIn")
    actorMgr:GetActor("40217"):ClearNarratorTask()
    actorUtils.FinishQuestID(false, 4021703)
    actorMgr:GetActor("40217"):EnterSceneLookCamera({x = 1493.288, y = 266.912, z = -1082.948}, 3, 3, false, true)
    this:DestroySelf()
end

function Q4021703_TriggerIn:PreTriggerIn()
    print("Q4021703_TriggerIn - PreTriggerIn")
end

function Q4021703_TriggerIn:LightUpTriggerIn()
    print("Q4021703_TriggerIn - LightUpTriggerIn")
end

function Q4021703_TriggerIn:TriggerOut()
    print("Q4021703_TriggerIn - TriggerOut")
end

return Q4021703_TriggerIn
