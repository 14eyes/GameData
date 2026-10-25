require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303614_TriggerIn03 = class("Q303614_TriggerIn03", GadgetActorProxy)
Q303614_TriggerIn03.defaultAlias = "Q303614_TriggerIn03"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q303614_TriggerIn03:OnPostDataPrepare()
    print("Q303614_TriggerIn03 - OnPostDataPrepare")
    this = self
end

function Q303614_TriggerIn03:OnPostComponentPrepare()
    print("Q303614_TriggerIn03 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(4, 40, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q303614_TriggerIn03:TriggerIn()
    print("Q303614_TriggerIn03 - TriggerIn")
    actorMgr:GetActor("3036"):QuestNarratorTask(datas.NarratorWithId_Q303614, nil)
    this:DestroySelf()
end

function Q303614_TriggerIn03:PreTriggerIn()
    print("Q303614_TriggerIn03 - PreTriggerIn")
end

function Q303614_TriggerIn03:LightUpTriggerIn()
    print("Q303614_TriggerIn03 - LightUpTriggerIn")
end

function Q303614_TriggerIn03:TriggerOut()
    print("Q303614_TriggerIn03 - TriggerOut")
end

return Q303614_TriggerIn03
