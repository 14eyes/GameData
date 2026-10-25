require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local ALiu_Feather_TagetTrigger = class("ALiu_Feather_TagetTrigger", GadgetActorProxy)
ALiu_Feather_TagetTrigger.defaultAlias = "ALiu_Feather_TagetTrigger"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function ALiu_Feather_TagetTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function ALiu_Feather_TagetTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function ALiu_Feather_TagetTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216643)
    self:DestroySelf()
end

function ALiu_Feather_TagetTrigger:TriggerOut()
    print("TriggerOut")
end

return ALiu_Feather_TagetTrigger
