require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021814_TriggerIn01 = class("Q4021814_TriggerIn01", GadgetActorProxy)
Q4021814_TriggerIn01.defaultAlias = "Q4021814_TriggerIn01"
local Q40218ClientConfig = require("Quest/Client/Q40218ClientConfig")

local this
local subIDs = Q40218ClientConfig.SubIDs
local datas = Q40218ClientConfig.Datas
local npcs = Q40218ClientConfig.Npcs
local points = Q40218ClientConfig.Points

function Q4021814_TriggerIn01:OnPostDataPrepare()
    print("Q4021814_TriggerIn01 - OnPostDataPrepare")
    this = self
end

function Q4021814_TriggerIn01:OnPostComponentPrepare()
    print("Q4021814_TriggerIn01 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40218)
end

function Q4021814_TriggerIn01:TriggerIn()
    print("Q4021814_TriggerIn01 - TriggerIn")
    actorMgr:GetActor("40218"):QuestNarratorTask(datas.NarratorWithId_4021814_01, nil)
    this:DestroySelf()
end

function Q4021814_TriggerIn01:PreTriggerIn()
    print("Q4021814_TriggerIn01 - PreTriggerIn")
end

function Q4021814_TriggerIn01:LightUpTriggerIn()
    print("Q4021814_TriggerIn01 - LightUpTriggerIn")
end

function Q4021814_TriggerIn01:TriggerOut()
    print("Q4021814_TriggerIn01 - TriggerOut")
end

return Q4021814_TriggerIn01
