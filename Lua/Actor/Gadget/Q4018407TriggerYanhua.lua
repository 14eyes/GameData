require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018407TriggerYanhua = class("Q4018407TriggerYanhua", GadgetActorProxy)
Q4018407TriggerYanhua.defaultAlias = "Q4018407TriggerYanhua"
local Q40184ClientConfig = require("Quest/Client/Q40184ClientConfig")

local this
local subIDs = Q40184ClientConfig.SubIDs
local datas = Q40184ClientConfig.Datas
local npcs = Q40184ClientConfig.Npcs
local points = Q40184ClientConfig.Points

function Q4018407TriggerYanhua:OnPostDataPrepare()
    print("Q4018407TriggerYanhua - OnPostDataPrepare")
    this = self
end

function Q4018407TriggerYanhua:OnPostComponentPrepare()
    print("Q4018407TriggerYanhua - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40184)
end

function Q4018407TriggerYanhua:TriggerIn()
    print("Q4018407TriggerYanhua - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40184"):QuestNarratorTask(datas.NarratorWithId_4018403, nil)
    actorMgr:GetActor("40184"):EnterSceneLookCamera({x = -557.621, y = 225.087, z = 356.338}, 0, 4, false, true)
end

function Q4018407TriggerYanhua:PreTriggerIn()
    print("Q4018407TriggerYanhua - PreTriggerIn")
end

function Q4018407TriggerYanhua:LightUpTriggerIn()
    print("Q4018407TriggerYanhua - LightUpTriggerIn")
end

function Q4018407TriggerYanhua:TriggerOut()
    print("Q4018407TriggerYanhua - TriggerOut")
end

return Q4018407TriggerYanhua
