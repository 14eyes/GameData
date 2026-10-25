require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021814_TriggerIn03 = class("Q4021814_TriggerIn03", GadgetActorProxy)
Q4021814_TriggerIn03.defaultAlias = "Q4021814_TriggerIn03"
local Q40218ClientConfig = require("Quest/Client/Q40218ClientConfig")

local this
local subIDs = Q40218ClientConfig.SubIDs
local datas = Q40218ClientConfig.Datas
local npcs = Q40218ClientConfig.Npcs
local points = Q40218ClientConfig.Points

function Q4021814_TriggerIn03:OnPostDataPrepare()
    print("Q4021814_TriggerIn03 - OnPostDataPrepare")
    this = self
end

function Q4021814_TriggerIn03:OnPostComponentPrepare()
    print("Q4021814_TriggerIn03 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40218)
end

function Q4021814_TriggerIn03:TriggerIn()
    print("Q4021814_TriggerIn03 - TriggerIn")
    actorMgr:GetActor("40218"):TransmitPlayerByQuestId(4021814, 1, nil, nil, nil)
end

function Q4021814_TriggerIn03:PreTriggerIn()
    print("Q4021814_TriggerIn03 - PreTriggerIn")
end

function Q4021814_TriggerIn03:LightUpTriggerIn()
    print("Q4021814_TriggerIn03 - LightUpTriggerIn")
end

function Q4021814_TriggerIn03:TriggerOut()
    print("Q4021814_TriggerIn03 - TriggerOut")
end

return Q4021814_TriggerIn03
