require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12022 = class("Quest12022", QuestActorProxy)
Quest12022.defaultAlias = "Quest12022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202201"] = self.OnSubStart1202201,
        ["1202202"] = self.OnSubStart1202202,
        ["1202203"] = self.OnSubStart1202203,
        ["1202205"] = self.OnSubStart1202205,
        ["1202208"] = self.OnSubStart1202208,
        ["1202209"] = self.OnSubStart1202209,
        ["1202216"] = self.OnSubStart1202216,
        ["1202210"] = self.OnSubStart1202210,
        ["1202217"] = self.OnSubStart1202217,
        ["1202211"] = self.OnSubStart1202211,
        ["1202213"] = self.OnSubStart1202213,
        ["1202207"] = self.OnSubStart1202207,
        ["1202212"] = self.OnSubStart1202212,
        ["1202214"] = self.OnSubStart1202214,
        ["1202215"] = self.OnSubStart1202215,
        ["1202206"] = self.OnSubStart1202206,
        ["1202204"] = self.OnSubStart1202204
    }
end

function Quest12022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202201"] = self.OnSubFinish1202201,
        ["1202202"] = self.OnSubFinish1202202,
        ["1202203"] = self.OnSubFinish1202203,
        ["1202205"] = self.OnSubFinish1202205,
        ["1202208"] = self.OnSubFinish1202208,
        ["1202209"] = self.OnSubFinish1202209,
        ["1202216"] = self.OnSubFinish1202216,
        ["1202210"] = self.OnSubFinish1202210,
        ["1202217"] = self.OnSubFinish1202217,
        ["1202211"] = self.OnSubFinish1202211,
        ["1202213"] = self.OnSubFinish1202213,
        ["1202207"] = self.OnSubFinish1202207,
        ["1202212"] = self.OnSubFinish1202212,
        ["1202214"] = self.OnSubFinish1202214,
        ["1202215"] = self.OnSubFinish1202215,
        ["1202206"] = self.OnSubFinish1202206,
        ["1202204"] = self.OnSubFinish1202204
    }
end

function Quest12022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1202201"] = self.OnSubFailed1202201,
        ["1202202"] = self.OnSubFailed1202202,
        ["1202203"] = self.OnSubFailed1202203,
        ["1202205"] = self.OnSubFailed1202205,
        ["1202208"] = self.OnSubFailed1202208,
        ["1202209"] = self.OnSubFailed1202209,
        ["1202216"] = self.OnSubFailed1202216,
        ["1202210"] = self.OnSubFailed1202210,
        ["1202217"] = self.OnSubFailed1202217,
        ["1202211"] = self.OnSubFailed1202211,
        ["1202213"] = self.OnSubFailed1202213,
        ["1202207"] = self.OnSubFailed1202207,
        ["1202212"] = self.OnSubFailed1202212,
        ["1202214"] = self.OnSubFailed1202214,
        ["1202215"] = self.OnSubFailed1202215,
        ["1202206"] = self.OnSubFailed1202206,
        ["1202204"] = self.OnSubFailed1202204
    }
end

function Quest12022:Start()
    print("Start")
end

function Quest12022:OnDestroy()
    print("OnDestroy")
end

function Quest12022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12022:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1202203 then
        print("readletter")
        self:ShowReadingDialog(100979)
    elseif arg1 == 1202204 then
        print("SetGlobalVar")
        actorUtils.FinishQuestID(false, 1202207)
    end
end

function Quest12022:OnSubStart1202201(arg1)
    print("OnSubStart1202201")
end

function Quest12022:OnSubFinish1202201(arg1)
    print("OnSubFinish1202201")
end

function Quest12022:OnSubFailed1202201(arg1)
    print("OnSubFailed1202201")
end

function Quest12022:OnSubStart1202202(arg1)
    print("OnSubStart1202202")
    actorMgr:CreateActorWithPos("Q12022Trigger", "Actor/Gadget/Q12022Trigger", 70900002, 0, {x = -3812.781, y = 165.907, z = -749.18}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3142Data.id, 1)
end

function Quest12022:OnSubFinish1202202(arg1)
    print("OnSubFinish1202202")
end

function Quest12022:OnSubFailed1202202(arg1)
    print("OnSubFailed1202202")
end

function Quest12022:OnSubStart1202203(arg1)
    print("OnSubStart1202203")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(1202203, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, false)
end

function Quest12022:OnSubFinish1202203(arg1)
    print("OnSubFinish1202203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc3142Data.alias, 3)
    end)
end

function Quest12022:OnSubFailed1202203(arg1)
    print("OnSubFailed1202203")
end

function Quest12022:OnSubStart1202205(arg1)
    print("OnSubStart1202205")
    actorMgr:CreateActorWithPos("Q12022Trigger1", "Actor/Gadget/Q12022Trigger1", 70900002, 0, {x = -3967.374, y = 172.4477, z = -699.8674}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q12022Trigger2", "Actor/Gadget/Q12022Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q12022_Foot5").pos, sceneData:GetDummyPoint(3, "Q12022_Foot5").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1037Data.alias)
    questNpcActor:SitOnChair(8065)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest12022:OnSubFinish1202205(arg1)
    print("OnSubFinish1202205")
    self:SafeDestroyQuestNpc(npcs.Npc3142Data.alias, 3)
end

function Quest12022:OnSubFailed1202205(arg1)
    print("OnSubFailed1202205")
end

function Quest12022:OnSubStart1202208(arg1)
    print("OnSubStart1202208")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1037Data.alias)
    questNpcActor:SitOnChair(8065)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q12022Trigger3", "Actor/Gadget/Q12022Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q12022_xinhai").pos, sceneData:GetDummyPoint(3, "Q12022_xinhai").rot, true, false, 3)
end

function Quest12022:OnSubFinish1202208(arg1)
    print("OnSubFinish1202208")
end

function Quest12022:OnSubFailed1202208(arg1)
    print("OnSubFailed1202208")
end

function Quest12022:OnSubStart1202209(arg1)
    print("OnSubStart1202209")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1037Data.alias)
        questNpcActor:SitOnChair(8065)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest12022:OnSubFinish1202209(arg1)
    print("OnSubFinish1202209")
end

function Quest12022:OnSubFailed1202209(arg1)
    print("OnSubFailed1202209")
end

function Quest12022:OnSubStart1202216(arg1)
    print("OnSubStart1202216")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(1202216, npcs.PaimonData.id, 2, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, false)
end

function Quest12022:OnSubFinish1202216(arg1)
    print("OnSubFinish1202216")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12022:OnSubFailed1202216(arg1)
    print("OnSubFailed1202216")
end

function Quest12022:OnSubStart1202210(arg1)
    print("OnSubStart1202210")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1037Data.alias)
        questNpcActor:SitOnChair(8065)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest12022:OnSubFinish1202210(arg1)
    print("OnSubFinish1202210")
end

function Quest12022:OnSubFailed1202210(arg1)
    print("OnSubFailed1202210")
end

function Quest12022:OnSubStart1202217(arg1)
    print("OnSubStart1202217")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(1202217, npcs.PaimonData.id, 2, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, false)
end

function Quest12022:OnSubFinish1202217(arg1)
    print("OnSubFinish1202217")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12022:OnSubFailed1202217(arg1)
    print("OnSubFailed1202217")
end

function Quest12022:OnSubStart1202211(arg1)
    print("OnSubStart1202211")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1037Data.alias)
        questNpcActor:SitOnChair(8065)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest12022:OnSubFinish1202211(arg1)
    print("OnSubFinish1202211")
end

function Quest12022:OnSubFailed1202211(arg1)
    print("OnSubFailed1202211")
end

function Quest12022:OnSubStart1202213(arg1)
    print("OnSubStart1202213")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(1202213, npcs.PaimonData.id, 2, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, false)
end

function Quest12022:OnSubFinish1202213(arg1)
    print("OnSubFinish1202213")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12022:OnSubFailed1202213(arg1)
    print("OnSubFailed1202213")
end

function Quest12022:OnSubStart1202207(arg1)
    print("OnSubStart1202207")
end

function Quest12022:OnSubFinish1202207(arg1)
    print("OnSubFinish1202207")
end

function Quest12022:OnSubFailed1202207(arg1)
    print("OnSubFailed1202207")
end

function Quest12022:OnSubStart1202212(arg1)
    print("OnSubStart1202212")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1037Data.alias)
        questNpcActor:SitOnChair(8065)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest12022:OnSubFinish1202212(arg1)
    print("OnSubFinish1202212")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
    end)
end

function Quest12022:OnSubFailed1202212(arg1)
    print("OnSubFailed1202212")
end

function Quest12022:OnSubStart1202214(arg1)
    print("OnSubStart1202214")
end

function Quest12022:OnSubFinish1202214(arg1)
    print("OnSubFinish1202214")
end

function Quest12022:OnSubFailed1202214(arg1)
    print("OnSubFailed1202214")
end

function Quest12022:OnSubStart1202215(arg1)
    print("OnSubStart1202215")
end

function Quest12022:OnSubFinish1202215(arg1)
    print("OnSubFinish1202215")
end

function Quest12022:OnSubFailed1202215(arg1)
    print("OnSubFailed1202215")
end

function Quest12022:OnSubStart1202206(arg1)
    print("OnSubStart1202206")
end

function Quest12022:OnSubFinish1202206(arg1)
    print("OnSubFinish1202206")
end

function Quest12022:OnSubFailed1202206(arg1)
    print("OnSubFailed1202206")
end

function Quest12022:OnSubStart1202204(arg1)
    print("OnSubStart1202204")
end

function Quest12022:OnSubFinish1202204(arg1)
    print("OnSubFinish1202204")
end

function Quest12022:OnSubFailed1202204(arg1)
    print("OnSubFailed1202204")
end

return Quest12022
