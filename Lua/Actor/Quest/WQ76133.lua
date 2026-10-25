require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76133 = class("Quest76133", QuestActorProxy)
Quest76133.defaultAlias = "Quest76133"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76133:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76133:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7613309"] = self.OnSubStart7613309,
        ["7613310"] = self.OnSubStart7613310,
        ["7613327"] = self.OnSubStart7613327,
        ["7613348"] = self.OnSubStart7613348,
        ["7613328"] = self.OnSubStart7613328,
        ["7613341"] = self.OnSubStart7613341,
        ["7613301"] = self.OnSubStart7613301,
        ["7613308"] = self.OnSubStart7613308,
        ["7613311"] = self.OnSubStart7613311,
        ["7613318"] = self.OnSubStart7613318,
        ["7613319"] = self.OnSubStart7613319,
        ["7613326"] = self.OnSubStart7613326,
        ["7613323"] = self.OnSubStart7613323,
        ["7613302"] = self.OnSubStart7613302,
        ["7613320"] = self.OnSubStart7613320,
        ["7613321"] = self.OnSubStart7613321,
        ["7613350"] = self.OnSubStart7613350,
        ["7613303"] = self.OnSubStart7613303,
        ["7613304"] = self.OnSubStart7613304,
        ["7613305"] = self.OnSubStart7613305,
        ["7613352"] = self.OnSubStart7613352,
        ["7613353"] = self.OnSubStart7613353,
        ["7613306"] = self.OnSubStart7613306,
        ["7613322"] = self.OnSubStart7613322,
        ["7613307"] = self.OnSubStart7613307,
        ["7613324"] = self.OnSubStart7613324,
        ["7613312"] = self.OnSubStart7613312,
        ["7613317"] = self.OnSubStart7613317,
        ["7613313"] = self.OnSubStart7613313,
        ["7613314"] = self.OnSubStart7613314,
        ["7613333"] = self.OnSubStart7613333,
        ["7613343"] = self.OnSubStart7613343,
        ["7613334"] = self.OnSubStart7613334,
        ["7613335"] = self.OnSubStart7613335,
        ["7613315"] = self.OnSubStart7613315,
        ["7613325"] = self.OnSubStart7613325,
        ["7613316"] = self.OnSubStart7613316,
        ["7613344"] = self.OnSubStart7613344,
        ["7613346"] = self.OnSubStart7613346,
        ["7613336"] = self.OnSubStart7613336,
        ["7613349"] = self.OnSubStart7613349,
        ["7613339"] = self.OnSubStart7613339,
        ["7613329"] = self.OnSubStart7613329,
        ["7613347"] = self.OnSubStart7613347,
        ["7613340"] = self.OnSubStart7613340,
        ["7613345"] = self.OnSubStart7613345
    }
end

function Quest76133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7613309"] = self.OnSubFinish7613309,
        ["7613310"] = self.OnSubFinish7613310,
        ["7613327"] = self.OnSubFinish7613327,
        ["7613348"] = self.OnSubFinish7613348,
        ["7613328"] = self.OnSubFinish7613328,
        ["7613341"] = self.OnSubFinish7613341,
        ["7613301"] = self.OnSubFinish7613301,
        ["7613308"] = self.OnSubFinish7613308,
        ["7613311"] = self.OnSubFinish7613311,
        ["7613318"] = self.OnSubFinish7613318,
        ["7613319"] = self.OnSubFinish7613319,
        ["7613326"] = self.OnSubFinish7613326,
        ["7613323"] = self.OnSubFinish7613323,
        ["7613302"] = self.OnSubFinish7613302,
        ["7613320"] = self.OnSubFinish7613320,
        ["7613321"] = self.OnSubFinish7613321,
        ["7613350"] = self.OnSubFinish7613350,
        ["7613303"] = self.OnSubFinish7613303,
        ["7613304"] = self.OnSubFinish7613304,
        ["7613305"] = self.OnSubFinish7613305,
        ["7613352"] = self.OnSubFinish7613352,
        ["7613353"] = self.OnSubFinish7613353,
        ["7613306"] = self.OnSubFinish7613306,
        ["7613322"] = self.OnSubFinish7613322,
        ["7613307"] = self.OnSubFinish7613307,
        ["7613324"] = self.OnSubFinish7613324,
        ["7613312"] = self.OnSubFinish7613312,
        ["7613317"] = self.OnSubFinish7613317,
        ["7613313"] = self.OnSubFinish7613313,
        ["7613314"] = self.OnSubFinish7613314,
        ["7613333"] = self.OnSubFinish7613333,
        ["7613343"] = self.OnSubFinish7613343,
        ["7613334"] = self.OnSubFinish7613334,
        ["7613335"] = self.OnSubFinish7613335,
        ["7613315"] = self.OnSubFinish7613315,
        ["7613325"] = self.OnSubFinish7613325,
        ["7613316"] = self.OnSubFinish7613316,
        ["7613344"] = self.OnSubFinish7613344,
        ["7613346"] = self.OnSubFinish7613346,
        ["7613336"] = self.OnSubFinish7613336,
        ["7613349"] = self.OnSubFinish7613349,
        ["7613339"] = self.OnSubFinish7613339,
        ["7613329"] = self.OnSubFinish7613329,
        ["7613347"] = self.OnSubFinish7613347,
        ["7613340"] = self.OnSubFinish7613340,
        ["7613345"] = self.OnSubFinish7613345
    }
end

function Quest76133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7613309"] = self.OnSubFailed7613309,
        ["7613310"] = self.OnSubFailed7613310,
        ["7613327"] = self.OnSubFailed7613327,
        ["7613314"] = self.OnSubFailed7613314,
        ["7613333"] = self.OnSubFailed7613333,
        ["7613343"] = self.OnSubFailed7613343,
        ["7613334"] = self.OnSubFailed7613334,
        ["7613316"] = self.OnSubFailed7613316,
        ["7613344"] = self.OnSubFailed7613344,
        ["7613346"] = self.OnSubFailed7613346,
        ["7613336"] = self.OnSubFailed7613336,
        ["7613329"] = self.OnSubFailed7613329
    }
end

function Quest76133:Start()
    print("Start")
end

function Quest76133:OnDestroy()
    print("OnDestroy")
end

function Quest76133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76133:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76133:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76133:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76133:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest76133:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76133:OnSubStart7613309(arg1)
    print("OnSubStart7613309")
end

function Quest76133:OnSubFinish7613309(arg1)
    print("OnSubFinish7613309")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613309(arg1)
    print("OnSubFailed7613309")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613310(arg1)
    print("OnSubStart7613310")
    actorUtils.BanUIByQuest(1, true, 76133)
end

function Quest76133:OnSubFinish7613310(arg1)
    print("OnSubFinish7613310")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613310(arg1)
    print("OnSubFailed7613310")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 76133)
end

function Quest76133:OnSubStart7613327(arg1)
    print("OnSubStart7613327")
    actorUtils.BanUIByQuest(1, true, 76133)
end

function Quest76133:OnSubFinish7613327(arg1)
    print("OnSubFinish7613327")
    actorUtils.BanUIByQuest(1, false, 76133)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613327(arg1)
    print("OnSubFailed7613327")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 76133)
end

function Quest76133:OnSubStart7613348(arg1)
    print("OnSubStart7613348")
end

function Quest76133:OnSubFinish7613348(arg1)
    print("OnSubFinish7613348")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613328(arg1)
    print("OnSubStart7613328")
end

function Quest76133:OnSubFinish7613328(arg1)
    print("OnSubFinish7613328")
end

function Quest76133:OnSubStart7613341(arg1)
    print("OnSubStart7613341")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7613341, 0, 70, 1, npcs.Npc22255.id)
end

function Quest76133:OnSubFinish7613341(arg1)
    print("OnSubFinish7613341")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613301(arg1)
    print("OnSubStart7613301")
end

function Quest76133:OnSubFinish7613301(arg1)
    print("OnSubFinish7613301")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613308(arg1)
    print("OnSubStart7613308")
    this:PlayCutsceneIndex(7613308, function(arg1)
        actorUtils.FinishQuestID(false, 7613308)
    end, nil, nil, false)
end

function Quest76133:OnSubFinish7613308(arg1)
    print("OnSubFinish7613308")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613311(arg1)
    print("OnSubStart7613311")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22255.id, 0, 40, 7613311)
end

function Quest76133:OnSubFinish7613311(arg1)
    print("OnSubFinish7613311")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613318(arg1)
    print("OnSubStart7613318")
end

function Quest76133:OnSubFinish7613318(arg1)
    print("OnSubFinish7613318")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613319(arg1)
    print("OnSubStart7613319")
end

function Quest76133:OnSubFinish7613319(arg1)
    print("OnSubFinish7613319")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613326(arg1)
    print("OnSubStart7613326")
end

function Quest76133:OnSubFinish7613326(arg1)
    print("OnSubFinish7613326")
end

function Quest76133:OnSubStart7613323(arg1)
    print("OnSubStart7613323")
end

function Quest76133:OnSubFinish7613323(arg1)
    print("OnSubFinish7613323")
end

function Quest76133:OnSubStart7613302(arg1)
    print("OnSubStart7613302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7613302, 0, 60, 1, npcs.Npc22255.id)
end

function Quest76133:OnSubFinish7613302(arg1)
    print("OnSubFinish7613302")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613320(arg1)
    print("OnSubStart7613320")
end

function Quest76133:OnSubFinish7613320(arg1)
    print("OnSubFinish7613320")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613321(arg1)
    print("OnSubStart7613321")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7613321, 0, 30, 1, npcs.Npc22255.id)
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
end

function Quest76133:OnSubFinish7613321(arg1)
    print("OnSubFinish7613321")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613350(arg1)
    print("OnSubStart7613350")
end

function Quest76133:OnSubFinish7613350(arg1)
    print("OnSubFinish7613350")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613303(arg1)
    print("OnSubStart7613303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7613303, 0, 30, 1, npcs.Paimon.id)
end

function Quest76133:OnSubFinish7613303(arg1)
    print("OnSubFinish7613303")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613304(arg1)
    print("OnSubStart7613304")
end

function Quest76133:OnSubFinish7613304(arg1)
    print("OnSubFinish7613304")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613305(arg1)
    print("OnSubStart7613305")
end

function Quest76133:OnSubFinish7613305(arg1)
    print("OnSubFinish7613305")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613352(arg1)
    print("OnSubStart7613352")
end

function Quest76133:OnSubFinish7613352(arg1)
    print("OnSubFinish7613352")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613353(arg1)
    print("OnSubStart7613353")
end

function Quest76133:OnSubFinish7613353(arg1)
    print("OnSubFinish7613353")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613306(arg1)
    print("OnSubStart7613306")
end

function Quest76133:OnSubFinish7613306(arg1)
    print("OnSubFinish7613306")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613322(arg1)
    print("OnSubStart7613322")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:NpcCreateWithNoBlackData(7613322, 0, npcs.Npc22255.id, 0, 20, 7613306, datas.NoBlack_01)
end

function Quest76133:OnSubFinish7613322(arg1)
    print("OnSubFinish7613322")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613307(arg1)
    print("OnSubStart7613307")
end

function Quest76133:OnSubFinish7613307(arg1)
    print("OnSubFinish7613307")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613324(arg1)
    print("OnSubStart7613324")
end

function Quest76133:OnSubFinish7613324(arg1)
    print("OnSubFinish7613324")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613312(arg1)
    print("OnSubStart7613312")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7613312, 0, 10, 1, npcs.Npc22255.id)
end

function Quest76133:OnSubFinish7613312(arg1)
    print("OnSubFinish7613312")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
end

function Quest76133:OnSubStart7613317(arg1)
    print("OnSubStart7613317")
end

function Quest76133:OnSubFinish7613317(arg1)
    print("OnSubFinish7613317")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613313(arg1)
    print("OnSubStart7613313")
end

function Quest76133:OnSubFinish7613313(arg1)
    print("OnSubFinish7613313")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613314(arg1)
    print("OnSubStart7613314")
end

function Quest76133:OnSubFinish7613314(arg1)
    print("OnSubFinish7613314")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613314(arg1)
    print("OnSubFailed7613314")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613333(arg1)
    print("OnSubStart7613333")
end

function Quest76133:OnSubFinish7613333(arg1)
    print("OnSubFinish7613333")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613333(arg1)
    print("OnSubFailed7613333")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613343(arg1)
    print("OnSubStart7613343")
end

function Quest76133:OnSubFinish7613343(arg1)
    print("OnSubFinish7613343")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613343(arg1)
    print("OnSubFailed7613343")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613334(arg1)
    print("OnSubStart7613334")
end

function Quest76133:OnSubFinish7613334(arg1)
    print("OnSubFinish7613334")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613334(arg1)
    print("OnSubFailed7613334")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613335(arg1)
    print("OnSubStart7613335")
end

function Quest76133:OnSubFinish7613335(arg1)
    print("OnSubFinish7613335")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613315(arg1)
    print("OnSubStart7613315")
end

function Quest76133:OnSubFinish7613315(arg1)
    print("OnSubFinish7613315")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613325(arg1)
    print("OnSubStart7613325")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7613325, 0, 500, 1, npcs.Npc22255.id)
end

function Quest76133:OnSubFinish7613325(arg1)
    print("OnSubFinish7613325")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
end

function Quest76133:OnSubStart7613316(arg1)
    print("OnSubStart7613316")
end

function Quest76133:OnSubFinish7613316(arg1)
    print("OnSubFinish7613316")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613316(arg1)
    print("OnSubFailed7613316")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613344(arg1)
    print("OnSubStart7613344")
end

function Quest76133:OnSubFinish7613344(arg1)
    print("OnSubFinish7613344")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613344(arg1)
    print("OnSubFailed7613344")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613346(arg1)
    print("OnSubStart7613346")
end

function Quest76133:OnSubFinish7613346(arg1)
    print("OnSubFinish7613346")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613346(arg1)
    print("OnSubFailed7613346")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613336(arg1)
    print("OnSubStart7613336")
end

function Quest76133:OnSubFinish7613336(arg1)
    print("OnSubFinish7613336")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubFailed7613336(arg1)
    print("OnSubFailed7613336")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613349(arg1)
    print("OnSubStart7613349")
    this:PlayCutsceneIndex(7613349, function(arg1)
        this:TransmitPlayerWithQuestIdByData(7613349, 2, datas.TransmitData, function(arg1)
            actorUtils.FinishQuestID(false, 7613349)
        end, nil, nil)
    end, nil, nil, false)
end

function Quest76133:OnSubFinish7613349(arg1)
    print("OnSubFinish7613349")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613339(arg1)
    print("OnSubStart7613339")
end

function Quest76133:OnSubFinish7613339(arg1)
    print("OnSubFinish7613339")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613329(arg1)
    print("OnSubStart7613329")
end

function Quest76133:OnSubFinish7613329(arg1)
    print("OnSubFinish7613329")
end

function Quest76133:OnSubFailed7613329(arg1)
    print("OnSubFailed7613329")
    this:RecycleAllRes()
end

function Quest76133:OnSubStart7613347(arg1)
    print("OnSubStart7613347")
    this:PlayCutsceneIndex(7613347, function(arg1)
        actorUtils.FinishQuestID(false, 7613347)
    end, nil, nil, false)
end

function Quest76133:OnSubFinish7613347(arg1)
    print("OnSubFinish7613347")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613340(arg1)
    print("OnSubStart7613340")
end

function Quest76133:OnSubFinish7613340(arg1)
    print("OnSubFinish7613340")
    this:SetNavigationByMainId(76133, true)
end

function Quest76133:OnSubStart7613345(arg1)
    print("OnSubStart7613345")
    this:NpcCreateWithNoBlackData(7613345, 1, npcs.Npc22262.id, 0, 70, 7613314, datas.NoBlack_01)
    this:GetQuestNpcActor(npcs.Npc22262.alias, 76133):DoFreeStyle(4803, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22268.id, 0, false, 0)
end

function Quest76133:OnSubFinish7613345(arg1)
    print("OnSubFinish7613345")
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22268.alias, 102)
    this:SetNavigationByMainId(76062, true)
end

return Quest76133
